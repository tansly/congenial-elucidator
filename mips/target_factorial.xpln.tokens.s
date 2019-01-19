

.data

linefeed:.asciiz "\n"
n0: .word 0
product0: .word 4
j0: .word 8
tmp8400: .word 12
tmp8410: .word 16
tmp8420: .word 20
n1: .word 0
tmp8451: .word 4
tmp8471: .word 8
tmp8481: .word 12
tmp8491: .word 16
tmp8502: .word 0
x2: .word 4
tmp8512: .word 8
y2: .word 12
tmp8522: .word 16
z2: .word 20
tmp8552: .word 24

.text


# (LABEL ITERATIVEFACTORIAL)
iterativefactorial:
# (2COPY PRODUCT 1)
li $t0,1
lw $t7,product0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY J 1)
li $t0,1
lw $t7,j0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp843|)
tmp843:
# (3AC LTE #:|tmp840| J N)
lw $t0,j0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,n0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sle $t0,$t0,$t1
lw $t1,tmp8400
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp840| #:|tmp844|)
lw $t0,tmp8400
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp844
# (3AC MULT #:|tmp841| PRODUCT J)
lw $t0,product0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,j0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8410
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY PRODUCT #:|tmp841|)
lw $t0,tmp8410
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,product0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC ADD #:|tmp842| J 1)
lw $t0,j0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
add $t0,$t0,$t1
lw $t1,tmp8420
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY J #:|tmp842|)
lw $t0,tmp8420
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,j0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp843|)
li $t0,0
beqz $t0,tmp843
# (LABEL #:|tmp844|)
tmp844:
# (RETURN PRODUCT)
lw $v0,product0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL RECURSIVEFACTORIAL)
recursivefactorial:
# (3AC LTE #:|tmp845| N 0)
lw $t0,n1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
sle $t0,$t0,$t1
lw $t1,tmp8451
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp845| #:|tmp846|)
lw $t0,tmp8451
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp846
# (RETURN 1)
li $v0,1
jr $ra
# (LABEL #:|tmp846|)
tmp846:
# (3AC SUB #:|tmp847| N 1)
lw $t0,n1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp8471
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp847| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp8471
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFACTORIAL #:|tmp848|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefactorial
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8481
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC MULT #:|tmp849| N #:|tmp848|)
lw $t0,n1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp8481
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8491
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp849|)
lw $v0,tmp8491
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp855|)
main:
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal mainbody
move $sp,$fp
lw $fp,4($sp)
li $v0,10
syscall
# (LABEL MAINBODY)
mainbody:
# (PARAM 10 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,10
sw $t0,($t7)
# (CALL ITERATIVEFACTORIAL #:|tmp850|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iterativefactorial
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8502
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY X #:|tmp850|)
lw $t0,tmp8502
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT X)
li $v0,1
lw $a0,x2
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 10 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,10
sw $t0,($t7)
# (CALL RECURSIVEFACTORIAL #:|tmp851|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefactorial
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8512
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Y #:|tmp851|)
lw $t0,tmp8512
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Y)
li $v0,1
lw $a0,y2
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (3AC EQ #:|tmp852| X Y)
lw $t0,x2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,y2
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
seq $t0,$t0,$t1
lw $t1,tmp8522
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp852| #:|tmp854|)
lw $t0,tmp8522
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp854
# (2COPY Z 1)
li $t0,1
lw $t7,z2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp853|)
li $t0,0
beqz $t0,tmp853
# (LABEL #:|tmp854|)
tmp854:
# (2COPY Z 0)
li $t0,0
lw $t7,z2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp853|)
tmp853:
# (OUTPUT Z)
li $v0,1
lw $a0,z2
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN 0)
li $v0,0
jr $ra