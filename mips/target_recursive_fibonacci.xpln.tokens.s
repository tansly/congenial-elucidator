

.data

linefeed:.asciiz "\n"
n0: .word 0
tmp9680: .word 4
tmp9690: .word 8
tmp9700: .word 12
tmp9720: .word 16
tmp9730: .word 20
tmp9740: .word 24
tmp9750: .word 28
tmp9760: .word 32
x1: .word 0
tmp9771: .word 4
tmp9781: .word 8
z1: .word 12
tmp9811: .word 16

.text


# (LABEL RECURSIVEFIBONACCI)
recursivefibonacci:
# (3AC EQ #:|tmp968| N 1)
lw $t0,n0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
seq $t0,$t0,$t1
lw $t1,tmp9680
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC EQ #:|tmp969| N 2)
lw $t0,n0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,2
seq $t0,$t0,$t1
lw $t1,tmp9690
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC OR #:|tmp970| #:|tmp968| #:|tmp969|)
lw $t0,tmp9680
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp9690
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
or $t0,$t0,$t1
lw $t1,tmp9700
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp970| #:|tmp971|)
lw $t0,tmp9700
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp971
# (RETURN 1)
li $v0,1
jr $ra
# (LABEL #:|tmp971|)
tmp971:
# (3AC SUB #:|tmp972| N 1)
lw $t0,n0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp9720
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp972| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp9720
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp973|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9730
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC SUB #:|tmp974| N 2)
lw $t0,n0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,2
sub $t0,$t0,$t1
lw $t1,tmp9740
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp974| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp9740
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp975|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9750
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC ADD #:|tmp976| #:|tmp973| #:|tmp975|)
lw $t0,tmp9730
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp9750
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp9760
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp976|)
lw $v0,tmp9760
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp981|)
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
# (INPUT X)
li $v0,5
syscall
lw $t7,x1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (LABEL #:|tmp979|)
tmp979:
# (3AC LT #:|tmp977| 0 X)
li $t0,0
lw $t1,x1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp9771
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp977| #:|tmp980|)
lw $t0,tmp9771
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp980
# (PARAM X 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp978|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9781
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp978|)
lw $t0,tmp9781
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z1
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (INPUT X)
li $v0,5
syscall
lw $t7,x1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (BRANCH BZ 0 #:|tmp979|)
li $t0,0
beqz $t0,tmp979
# (LABEL #:|tmp980|)
tmp980:
# (RETURN 0)
li $v0,0
jr $ra