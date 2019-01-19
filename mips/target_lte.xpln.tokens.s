

.data

linefeed:.asciiz "\n"
a0: .word 0
tmp9550: .word 4
tmp9580: .word 8

.text


# (ENTRY #:|tmp958|)
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
# (2COPY A 5)
li $t0,5
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC LTE #:|tmp955| A 6)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,6
sle $t0,$t0,$t1
lw $t1,tmp9550
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp955| #:|tmp957|)
lw $t0,tmp9550
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp957
# (RETURN A)
lw $v0,a0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (BRANCH BZ 0 #:|tmp956|)
li $t0,0
beqz $t0,tmp956
# (LABEL #:|tmp957|)
tmp957:
# (RETURN 6)
li $v0,6
jr $ra
# (LABEL #:|tmp956|)
tmp956: