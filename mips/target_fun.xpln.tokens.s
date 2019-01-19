

.data

linefeed:.asciiz "\n"
x0: .word 0
tmp8780: .word 4
tmp8790: .word 8
tmp8800: .word 12
x1: .word 0
y1: .word 4
tmp8831: .word 8
tmp8841: .word 12
tmp8851: .word 16
tmp8882: .word 0
x2: .word 4
tmp8892: .word 8
y2: .word 12
tmp8902: .word 16
z2: .word 20
tmp8912: .word 24

.text


# (LABEL F)
f:
# (INPUT X)
li $v0,5
syscall
lw $t7,x0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC LT #:|tmp878| X 10)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,10
slt $t0,$t0,$t1
lw $t1,tmp8780
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp878| #:|tmp882|)
lw $t0,tmp8780
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp882
# (3AC MULT #:|tmp879| X 5)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,5
mul $t0,$t0,$t1
lw $t1,tmp8790
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY X #:|tmp879|)
lw $t0,tmp8790
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp881|)
li $t0,0
beqz $t0,tmp881
# (LABEL #:|tmp882|)
tmp882:
# (3AC ADD #:|tmp880| X 5)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,5
add $t0,$t0,$t1
lw $t1,tmp8800
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY X #:|tmp880|)
lw $t0,tmp8800
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp881|)
tmp881:
# (OUTPUT X)
li $v0,1
lw $a0,x0
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN X)
lw $v0,x0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL G)
g:
# (INPUT X)
li $v0,5
syscall
lw $t7,x1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Y 0)
li $t0,0
lw $t7,y1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp886|)
tmp886:
# (3AC LT #:|tmp883| 0 X)
li $t0,0
lw $t1,x1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp8831
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp883| #:|tmp887|)
lw $t0,tmp8831
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp887
# (3AC ADD #:|tmp884| X Y)
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,y1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp8841
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY Y #:|tmp884|)
lw $t0,tmp8841
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC SUB #:|tmp885| X 1)
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp8851
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY X #:|tmp885|)
lw $t0,tmp8851
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp886|)
li $t0,0
beqz $t0,tmp886
# (LABEL #:|tmp887|)
tmp887:
# (OUTPUT Y)
li $v0,1
lw $a0,y1
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN Y)
lw $v0,y1
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp891|)
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
# (CALL F #:|tmp888|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal f
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8882
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY X #:|tmp888|)
lw $t0,tmp8882
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (CALL G #:|tmp889|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal g
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8892
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Y #:|tmp889|)
lw $t0,tmp8892
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC ADD #:|tmp890| X Y)
lw $t0,x2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,y2
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp8902
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY Z #:|tmp890|)
lw $t0,tmp8902
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
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