;;;; this example compiles arithmetic expressions and their assignment to 
;;;; Three address code (TAC) then to register-only ops.
;;;; -cem bozsahin

;; Examples in tac and zac directories generate IC code with IC temporaries.

;; This version generates TAC with IC temporaries, then creates MIPS-style .data and .text segments
;; which refer to these temporaries, and implements the TAC as register operations.
;; This is because in MIPS all ops are done in registers; no op refers to memory locations.
;; For example (3ac mult a b c) meaning a := b * c in IC code is translated into
;;  lw $t0,b
;;  lw $t1,c
;;  mul $t0,$t0,$t1
;;  sw $t0,a
;;
;; where lw is load word from memory to register
;; and sw means save the register's value in a word in memory.
;; $ti are temporary value registers of MIPS-like architectures. All we need is 2 for TAC codes.
;; We can think of this version as a register-based TAC, rather than true target code.

;; Here is the algorithm: 1) Generate TAC with relative addresses with IC temporaries. 2) Map that result to a 
;;  register-based TAC with data and code segments. 

;; A Symbol table keeps names (variables and constants) and type info. Its format is
;; hash key: (name blockno)  hash value: (type value)
;;   type is NUM or VAR.  Value is relevant for numbers to choose 'li' MIPS command later. Each type takes a fixed amount of 
;;   space (in MIPS generation i assume one word).

(defun mk-symtab (size)
  (make-hash-table :test #'equal :size size :rehash-threshold 0.8))  ; we need equal function to match a LIST of values as key

(defparameter *symtab* (mk-symtab 200)) ; this is a global variable, referred to in the grammar's semantic actions

(defparameter *blockno* 0)  ;; increment this everytime a new code block (procedure etc.) is entered. 

(defparameter *localoffset* 0)

(defun target-code-mips (input &optional (outp nil))
  "if outp is t, will send it to std out"
  (clrhash *symtab*) ; we need to reset the symbol table for every code gen
  (setf *blockno* 0)
  (setf *localoffset* 0)
  (if (or (listp input) (not outp))
    (setf *outstream* nil)
    (setf *outstream* (concatenate 'string "target_" input ".s")))
  (format t "~%Lexical analyzer feed to parser as seen by Lisp reader:~2%~A"
	  (with-open-file (s input :direction :input :if-does-not-exist :error)(read s)))
  (target-code input))

(defun mk-sym-entry (name)
  "NB: Lisp hash is collision-free, duplicates just replace the older value."
  (cond ((numberp name)
         (setf (gethash (list name *blockno*) *symtab*) (list 'num name *blockno*)))
        ((symbolp name)
         (if (not (gethash (list name *blockno*) *symtab*))
           (progn
             (setf (gethash (list name *blockno*) *symtab*) (list 'var name *blockno* *localoffset*))
             (incf *localoffset* 4))))
        (t (setf (gethash name *symtab*) (list 'fun name *blockno*)))))

(defun sym-get-type (val)
  (first val))

(defun sym-get-value (val)
  (second val))

(defun sym-get-block (val)
  (third val))

(defun sym-get-offset (val)
  (fourth val))

;; SDD section
;;
;; advice: never use a constant on the RHS of rules, put them in the lexicon and 
;;         symbolize them in lexforms

;;; TAC Templates:
;;  (3ac op p1 p2 p3)
;;  (2ac op p1 p2)
;;  (2copy p1 p1)

(defparameter *tac-to-mips* '(
                              (MULT "mul") (DIV "div") (ADD "add") (SUB "sub") (UMINUS "sub")
                              (LT "slt") (LTE "sle") (EQ "seq") (BZ "beqz") (GOTO "j")
                              (AND "and") (XOR "xor")(OR "or"))) ; intstruction set corr.

;; two functions to get type and value of tokens

;; in LALR parser, every token is a list whose first element is its type and second element its value.

;;; NOTE: the reason why i did not write any of these as macros is so that you can trace them if you feel like it

(defun t-get-type (x)
  "token type"
  (first x))

(defun t-get-val (x)
  "token value"
  (second x))

(defun wrap (x)
  "to wrap code in parentheses"
  (list x))

(defun pprint-code (code)
  (dolist (instruction (second code))
    (pprint instruction))
  t)

(defun mk-mips (p register)
  (if (numberp p)
    (format t "~%li ~(~A~),~(~A~)" register p)
    (progn
      (format t "~%lw ~(~A~),~(~A~)~d" register p *blockno*)
      (format t "~%addi ~(~A~),~(~A~),4" register register)
      (format t "~%sub ~(~A~),$fp,~(~A~)" register register)
      (format t "~%lw ~(~A~),(~(~A~))" register register))))

(defun mk-mips-lea (p register)
  (progn
    (format t "~%lw ~(~A~),~(~A~)~d" register p *blockno*)
    (format t "~%addi ~(~A~),~(~A~),4" register register)
    (format t "~%sub ~(~A~),$fp,~(~A~)" register register)))

(defun tac-get-mips (op)
  (second (assoc op *tac-to-mips*)))

(defun mk-mips-3ac (i)
  (let ((op (tac-get-mips (first i)))
        (p1 (second i))
        (p2 (third i))
        (p3 (fourth i)))
    (mk-mips p2 "$t0")
    (mk-mips p3 "$t1")
    (format t "~%~(~A~) $t0,$t0,$t1" op)
    (mk-mips-lea p1 "$t1")
    (format t "~%sw $t0,($t1)")))

(defun mk-mips-2ac (i)
  (let ((op (tac-get-mips (first i)))
        (p1 (second i))
        (p2 (third i)))
    (mk-mips p2 "$t1")
    (format t "~%~(~A~) $t0,$zero,$t1" op)
    (mk-mips-lea p1 "$t7")
    (format t "~%sw $t0,($t7)")))

(defun mk-mips-2copy (i)
  (let ((p1 (first i))
        (p2 (second i)))
    (mk-mips p2 "$t0")
    (mk-mips-lea p1 "$t7")
    (format t "~%sw $t0,($t7)")))

(defun mk-mips-branch (i)
  (let ((op (tac-get-mips (first i)))
        (p1 (second i))
        (p2 (third i)))
    (mk-mips p1 "$t0")
    (format t "~%~(~A~) $t0,~(~A~)" op p2)))

(defun mk-mips-label (i)
  (let ((label (first i)))
    (let ((blockn (sym-get-block (gethash (list label) *symtab*))))
      (if blockn
        (setf *blockno* blockn))
      (format t "~%~(~A:~)" label))))

(defun mk-mips-readint (i)
  (let ((var (first i)))
    (mk-mips 5 "$v0")
    (format t "~%syscall")
    (mk-mips-lea var "$t7")
    (format t "~%sw $v0,($t7)")))

(defun mk-mips-printint (i)
  (let ((var (first i)))
    (mk-mips 1 "$v0")
    (mk-mips var "$a0")
    (format t "~%syscall")
    ;; Print out a linefeed
    (format t "~%li $v0,4")
    (format t "~%la $a0,linefeed")
    (format t "~%syscall")))

(defun mk-mips-param (i)
  (let ((param (first i))
        (offset (second i)))
    (mk-mips offset "$t7")
    (format t "~%addi $t7,$t7,4")
    (format t "~%sub $t7,$sp,$t7")
    ;; t7 now holds the address of the parameter (in the stack)
    (mk-mips param "$t0")
    (format t "~%sw $t0,($t7)")))

(defun mk-mips-call (i)
  (let ((fun (first i))
        (retplace (second i)))
    ;; XXX: Stack frames are fixed to 512 bytes of size.
    ;; TODO: Determine the size of the stack frame dynamically.
    (format t "~%sw $ra,($sp)")
    (format t "~%sw $fp,4($sp)")
    (format t "~%move $fp,$sp")
    (format t "~%li $t0,512")
    (format t "~%sub $sp,$sp,$t0")
    (format t "~%jal ~(~A~)" fun)
    ;; After return
    ;; Restore stack and frame pointers and return address register
    (format t "~%move $sp,$fp")
    (format t "~%lw $fp,4($sp)")
    (format t "~%lw $ra,($sp)")
    ;; Save the return value
    (mk-mips-lea retplace "$t7")
    (format t "~%sw $v0,($t7)")))

(defun mk-mips-return (i)
  (let ((retexpr (first i)))
    (mk-mips retexpr "$v0")
    (format t "~%jr $ra")))

;; Argument i is always NIL and will be ignored
(defun mk-mips-entry (i)
  (progn
    ;; Set up the stack frame for the main function and initialize
    ;; the frame pointer.
    (format t "~%main:")
    (format t "~%move $fp,$sp")
    (format t "~%li $t0,512")
    (format t "~%sub $sp,$sp,$t0")
    ;; Call mainbody
    (format t "~%sw $fp,4($sp)")
    (format t "~%move $fp,$sp")
    (format t "~%li $t0,512")
    (format t "~%sub $sp,$sp,$t0")
    (format t "~%jal ~(~A~)" 'mainbody)
    ;; After return
    ;; Restore stack and frame pointers
    (format t "~%move $sp,$fp")
    (format t "~%lw $fp,4($sp)")
    ;; Exit
    (format t "~%li $v0,10")
    (format t "~%syscall")))

(defun create-data-segment ()
  "only for variables; numbers will use li loading rather than lw
  If you have more than one block, you need to create .data for each block."
  (format t "~2%.data~%")
  (format t "~%linefeed:.asciiz \"\\n\"")
  (maphash #'(lambda (key val)
               (if (equal (sym-get-type val) 'VAR)
                 (format t "~%~(~A~)~d: .word ~d"
                         (sym-get-value val)
                         (sym-get-block val)
                         (sym-get-offset val)))) *symtab*))

(defun create-code-segment (code)
  (format t "~2%.text~2%") 
  (dolist (instruction (second code)) ; NB. code is a grammar variable feature (code i1 i2 i3 ...)
    (let ((itype (first instruction)))
      (format t "~%# ~S" instruction)
      (cond ((equal itype '3AC) (mk-mips-3ac (rest instruction)))
            ((equal itype '2AC) (mk-mips-2ac (rest instruction)))
            ((equal itype '2COPY) (mk-mips-2copy (rest instruction)))
            ((equal itype 'LABEL) (mk-mips-label (rest instruction)))
            ((equal itype 'BRANCH) (mk-mips-branch (rest instruction)))
            ((equal itype 'INPUT) (mk-mips-readint (rest instruction)))
            ((equal itype 'OUTPUT) (mk-mips-printint (rest instruction)))
            ((equal itype 'CALL) (mk-mips-call (rest instruction)))
            ((equal itype 'RETURN) (mk-mips-return (rest instruction)))
            ((equal itype 'ENTRY) (mk-mips-entry (rest instruction)))
            ((equal itype 'PARAM) (mk-mips-param (rest instruction)))
            (t (format t "unknown TAC code: ~(~A~)" instruction))))))

(defun map-to-mips (code)
  (if (stringp *outstream*) (dribble *outstream*))  ; open out
  (create-data-segment) ; uses the symbol table
  (create-code-segment code)
  (if (stringp *outstream*) (dribble))) ; must close dribble

(defun tac-to-rac (code)
  (maphash #'(lambda (key val)(format t "~%~A : ~A" key val)) *symtab*)
  (format t  "~2%TAC code:~2%")
  (pprint-code code)
  (format t "~2%MIPS-style code using register ops only:~2%")
  (map-to-mips code))

;; some aux functions  to retrieve amd make feature values for grammar variables

(defun mk-place (v)
  (list 'place v))

(defun mk-code (v)
  (list 'code v))

(defun var-get-place (v)
  (second (assoc 'place v)))

(defun var-get-code (v)
  (second (assoc 'code v)))

(defun mk-2ac (op p1 p2)
  (wrap (list '2ac op p1 p2)))

(defun mk-3ac (op p1 p2 p3)
  (wrap (list '3ac op p1 p2 p3)))

(defun mk-2copy (p1 p2)
  (wrap (list '2copy p1 p2)))

(defun mk-label (p1)
  (wrap (list 'label p1)))

(defun mk-branch (op p1 p2)
  (wrap (list 'branch op p1 p2)))

(defun mk-input (var)
  (wrap (list 'input var)))

(defun mk-output (var)
  (wrap (list 'output var)))

(defun mk-param (var offset)
  (wrap (list 'param var offset)))

(defun mk-call (fun retplace)
  (wrap (list 'call fun retplace)))

(defun mk-return (var)
  (wrap (list 'return var)))

(defun mk-entry (var)
  (wrap (list 'entry var)))

(defun mk-exit ()
  (wrap (list 'exit)))

(defun newtemp ()
  (gensym "tmp"))       ; returns a new symbol prefixed tmp at Lisp run-time

;;;; LALR data 

(defparameter grammar
  '(
    (start --> defs stmts
           #'(lambda (defs stmts)
               (let ((retplace (newtemp)))
                 (mk-sym-entry retplace)
                 (mk-sym-entry (list 'mainbody))
                 (tac-to-rac (mk-code (append (var-get-code defs)
                                              (mk-entry retplace)
                                              (mk-label 'mainbody)
                                              (var-get-code stmts)))))))

    (defs -->
             #'(lambda ()
                 (list (mk-place nil)
                       (mk-code nil))))
    (defs --> defs def
             #'(lambda (defs def)
                 (list (mk-place nil)
                       (mk-code (append (var-get-code defs)
                                        (var-get-code def))))))

    (def --> K_FUN ID fplist stmts K_ENDFUN END
         #'(lambda (K_FUN ID fplist stmts K_ENDFUN END)
             (progn
               (mk-sym-entry (list (sym-get-value ID)))
               (incf *blockno*)
               (setf *localoffset* 0)
               (list (mk-place nil)
                     (mk-code (append (mk-label (sym-get-value ID))
                                      (var-get-code stmts)))))))

    (fplist --> LP fargs RP
            #'(lambda (LP fargs RP)
                (identity fargs)))
    (fplist --> LP RP
            #'(lambda (LP RP)
                (list (mk-place nil)
                      (mk-code nil))))

    (fargs --> ID
           #'(lambda (ID)
               (progn
                 (mk-sym-entry (t-get-val ID))
                 (list (mk-place nil)
                       (mk-code nil)))))
    (fargs --> fargs ARGSEPERATOR ID
           #'(lambda (fargs ARGSEPERATOR ID)
               (progn
                 (mk-sym-entry (t-get-val ID))
                 (list (mk-place nil)
                       (mk-code nil)))))

    (fcall --> ID aplist
           #'(lambda (ID aplist)
               (let ((retplace (newtemp)))
                 (mk-sym-entry retplace)
                 (list (mk-place retplace)
                       (mk-code (append (var-get-code aplist)
                                        (mk-call (t-get-val ID) retplace)))))))

    (aplist --> LP aargs RP
            #'(lambda (LP aargs RP)
                (list (mk-place nil)
                      (mk-code (append (var-get-code aargs)
                                       (map
                                         'list
                                         #'(lambda (argplace)
                                             (let ((place (first argplace))
                                                   (offset (second argplace)))
                                               (first (mk-param place offset))))
                                         (var-get-place aargs)))))))
    (aplist --> LP RP
            #'(lambda (LP RP)
                (list (mk-place nil)
                      (mk-code nil))))

    (aargs --> expr
           #'(lambda (expr)
               (list (mk-place (list (list (var-get-place expr)
                                           0)))
                     (mk-code (var-get-code expr)))))
    (aargs --> aargs ARGSEPERATOR expr
           #'(lambda (aargs ARGSEPERATOR expr)
               (list (mk-place (append (var-get-place aargs)
                                       (list (list (var-get-place expr)
                                                   (+ 4 (second (first (last (var-get-place aargs)))))))))
                     (mk-code (append (var-get-code aargs)
                                      (var-get-code expr))))))

    (stmts --> stmt END
           #'(lambda (stmt END)
               (list (mk-place nil)
                     (mk-code (var-get-code stmt)))))
    (stmts --> stmts stmt END
           #'(lambda (stmts stmt END)
               (list (mk-place nil)
                     (mk-code (append (var-get-code stmts)
                                      (var-get-code stmt))))))

    (stmt --> assign
          #'(lambda (assign)
              (identity assign)))
    (stmt --> ifcond
          #'(lambda (ifcond)
              (identity ifcond)))
    (stmt --> wh
          #'(lambda (wh)
              (identity wh)))
    (stmt --> ret
          #'(lambda (ret)
              (identity ret)))
    (stmt --> io
          #'(lambda (io)
              (identity io)))

    (assign --> ID COLON EQLS expr
            #'(lambda (ID COLON EQLS expr)
                (progn
                  (mk-sym-entry (t-get-val ID))
                  (list (mk-place nil)
                        (mk-code (append (var-get-code expr)
                                         (mk-2copy (t-get-val ID)
                                                   (var-get-place expr))))))))
    
    (io --> K_INPUT ID
        #'(lambda (K_INPUT ID)
            (progn
              (mk-sym-entry (t-get-val ID))
              (list (mk-place nil)
                    (mk-code (mk-input (t-get-val ID)))))))

    (io --> K_OUTPUT ID
        #'(lambda (K_OUTPUT ID)
            (progn
              (mk-sym-entry (t-get-val ID))
              (list (mk-place nil)
                    (mk-code (mk-output (t-get-val ID)))))))

    (wh --> K_WHILE cexpr stmts K_ENDWHILE
        #'(lambda (K_WHILE cexpr stmts K_ENDWHILE)
            (let ((cond-label (newtemp))
                  (next-label (newtemp)))
              (list (mk-place nil)
                    (mk-code (append (mk-label cond-label)
                                     (var-get-code cexpr)
                                     (mk-branch 'bz
                                                (var-get-place cexpr)
                                                next-label)
                                     (var-get-code stmts)
                                     (mk-branch 'bz
                                                0
                                                cond-label)
                                     (mk-label next-label)))))))

    (ret --> K_RET expr
         #'(lambda (K_RET expr)
             (list (mk-place nil)
                   (mk-code (append (var-get-code expr)
                                    (mk-return (var-get-place expr)))))))

    (ifcond --> K_IF cexpr stmts K_ENDIF
            #'(lambda (K_IF cexpr stmts K_ENDIF)
                (let ((next-label (newtemp)))
                  (list (mk-place nil)
                        (mk-code (append (var-get-code cexpr)
                                         (mk-branch 'bz
                                                    (var-get-place cexpr)
                                                    next-label)
                                         (var-get-code stmts)
                                         (mk-label next-label)))))))
    (ifcond --> K_IF cexpr stmts K_ELSE stmts K_ENDIF
            #'(lambda (K_IF cexpr stmts_t K_ELSE stmts_f K_ENDIF)
                (let ((next-label (newtemp))
                      (false-label (newtemp)))
                  (list (mk-place nil)
                        (mk-code (append (var-get-code cexpr)
                                         (mk-branch 'bz
                                                    (var-get-place cexpr)
                                                    false-label)
                                         (var-get-code stmts_t)
                                         (mk-branch 'bz
                                                    ; XXX:
                                                    ; I don't want to define
                                                    ; a new instruction for
                                                    ; unconditional branch.
                                                    0
                                                    next-label)
                                         (mk-label false-label)
                                         (var-get-code stmts_f)
                                         (mk-label next-label)))))))

    (cexpr --> cexpr K_OR cterm
           #'(lambda (cexpr K_OR cterm)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code cexpr)
                                        (var-get-code cterm)
                                        (mk-3ac 'or
                                                newplace
                                                (var-get-place cexpr)
                                                (var-get-place cterm))))))))
    (cexpr --> cterm
           #'(lambda (cterm)
               (identity cterm)))

    (cterm --> cterm K_AND cfactor
           #'(lambda (cterm K_AND cfactor)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code cterm)
                                        (var-get-code cfactor)
                                        (mk-3ac 'and
                                                newplace
                                                (var-get-place cterm)
                                                (var-get-place cfactor))))))))
    (cterm --> cfactor
           #'(lambda (cfactor)
               (identity cfactor)))

    (cfactor --> LP cexpr RP
             #'(lambda (LP cexpr RP)
                 (identity cexpr)))
    (cfactor --> K_NOT cexpr
             #'(lambda (K_NOT cexpr)
                 (let ((newplace (newtemp)))
                   (mk-sym-entry newplace)
                   (list (mk-place newplace)
                         (mk-code (append (var-get-code cexpr)
                                          (mk-3ac 'xor
                                                  newplace
                                                  1
                                                  (var-get-place cexpr))))))))
    (cfactor --> rexpr
             #'(lambda (rexpr)
                 (identity rexpr)))

    (rexpr --> expr EQLS EQLS expr
           #'(lambda (expr1 EQLS1 EQLS2 expr2)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code expr1)
                                        (var-get-code expr2)
                                        (mk-3ac 'eq
                                                newplace
                                                (var-get-place expr1)
                                                (var-get-place expr2))))))))
    (rexpr --> expr LT expr
           #'(lambda (expr1 LT expr2)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code expr1)
                                        (var-get-code expr2)
                                        (mk-3ac 'lt
                                                newplace
                                                (var-get-place expr1)
                                                (var-get-place expr2))))))))
    (rexpr --> expr LT EQLS expr
           #'(lambda (expr1 LT EQLS expr2)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code expr1)
                                        (var-get-code expr2)
                                        (mk-3ac 'lte
                                                newplace
                                                (var-get-place expr1)
                                                (var-get-place expr2))))))))
    (rexpr --> expr GT expr
           #'(lambda (expr1 GT expr2)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code expr1)
                                        (var-get-code expr2)
                                        (mk-3ac 'lt
                                                newplace
                                                (var-get-place expr2)
                                                (var-get-place expr1))))))))
    (rexpr --> expr GT EQLS expr
           #'(lambda (expr1 GT EQLS expr2)
               (let ((newplace (newtemp)))
                 (mk-sym-entry newplace)
                 (list (mk-place newplace)
                       (mk-code (append (var-get-code expr1)
                                        (var-get-code expr2)
                                        (mk-3ac 'lte
                                                newplace
                                                (var-get-place expr2)
                                                (var-get-place expr1))))))))

    (expr --> expr ADD term
          #'(lambda (expr ADD term)
              (let ((newplace (newtemp)))
                (mk-sym-entry newplace)
                (list (mk-place newplace)
                      (mk-code (append (var-get-code expr)
                                       (var-get-code term)
                                       (mk-3ac 'add
                                               newplace
                                               (var-get-place expr)
                                               (var-get-place term))))))))
    (expr --> expr SUB term
          #'(lambda (expr SUB term)
              (let ((newplace (newtemp)))
                (mk-sym-entry newplace)
                (list (mk-place newplace)
                      (mk-code (append (var-get-code expr)
                                       (var-get-code term)
                                       (mk-3ac 'sub
                                               newplace
                                               (var-get-place expr)
                                               (var-get-place term))))))))
    (expr --> term
          #'(lambda (term)
              (identity term)))

    (term --> term MULT factor
          #'(lambda (term MULT factor)
              (let ((newplace (newtemp)))
                (mk-sym-entry newplace)
                (list (mk-place newplace)
                      (mk-code (append (var-get-code term)
                                       (var-get-code factor)
                                       (mk-3ac 'mult
                                               newplace
                                               (var-get-place term)
                                               (var-get-place factor))))))))
    (term --> term DIV factor
          #'(lambda (term DIV factor)
              (let ((newplace (newtemp)))
                (mk-sym-entry newplace)
                (list (mk-place newplace)
                      (mk-code (append (var-get-code term)
                                       (var-get-code factor)
                                       (mk-3ac 'div
                                               newplace
                                               (var-get-place term)
                                               (var-get-place factor))))))))
    (term --> factor
          #'(lambda (factor)
              (identity factor)))

    (factor --> LP expr RP
            #'(lambda (LP expr RP)
                (identity expr)))
    (factor --> fcall
            #'(lambda (fcall)
                (identity fcall)))
    (factor --> SUB ID
            #'(lambda (SUB ID)
                (let ((newplace (newtemp)))
                  (mk-sym-entry newplace)
                  (list (mk-place newplace)
                        (mk-code (mk-2ac 'uminus newplace
                                         (t-get-val ID)))))))
    (factor --> ID
            #'(lambda (ID)
                (progn
                  (mk-sym-entry (t-get-val ID))
                  (list (mk-place (t-get-val ID))
                        (mk-code nil)))))

    ))

(defparameter lexforms '(
                         ID END COLON EQLS LP RP ADD SUB MULT DIV GT LT
                         K_RET K_IF K_ENDIF K_ELSE K_WHILE K_ENDWHILE
                         K_AND K_OR
                         K_INPUT K_OUTPUT
                         K_FUN K_ENDFUN
                         ARGSEPERATOR
                         ))

(defparameter lexicon '(
                        (\; END) ;; all but ID goes in the lexicon
                        (|:| COLON)
                        (|=| EQLS)
                        (|(| LP)
                        (|)| RP)
                        ($ $)        ; this is for lalrparser.lisp's end of input
                        (+ ADD)
                        (- SUB)
                        (* MULT)
                        (/ DIV)
                        (< LT)
                        (> GT)
                        (return K_RET)
                        (if K_IF)
                        (endi K_ENDIF)
                        (else K_ELSE)
                        (while K_WHILE)
                        (endw K_ENDWHILE)
                        (and K_AND)
                        (or K_OR)
                        (! K_NOT)
                        (input K_INPUT)
                        (output K_OUTPUT)
                        (fun K_FUN)
                        (endf K_ENDFUN)
                        (|,| ARGSEPERATOR)
                        ))
;; if you change the end-marker, change its hardcopy above in lexicon above as well.
;; (because LALR parser does not evaluate its lexicon symbols---sorry.)
(defparameter *ENDMARKER* '$)
