

.data

linefeed:.asciiz "\n"
a0: .word 0
tmp9630: .word 4
tmp9640: .word 8
tmp9670: .word 12

.text


# (ENTRY #:|tmp967|)
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
# (3AC LT #:|tmp963| A 6)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,6
slt $t0,$t0,$t1
lw $t1,tmp9630
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC XOR #:|tmp964| 1 #:|tmp963|)
li $t0,1
lw $t1,tmp9630
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
xor $t0,$t0,$t1
lw $t1,tmp9640
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp964| #:|tmp966|)
lw $t0,tmp9640
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp966
# (RETURN A)
lw $v0,a0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (BRANCH BZ 0 #:|tmp965|)
li $t0,0
beqz $t0,tmp965
# (LABEL #:|tmp966|)
tmp966:
# (RETURN 6)
li $v0,6
jr $ra
# (LABEL #:|tmp965|)
tmp965: