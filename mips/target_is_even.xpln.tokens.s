

.data

linefeed:.asciiz "\n"
x0: .word 0
tmp9390: .word 4
tmp9410: .word 8
tmp9430: .word 12
tmp9440: .word 16
x1: .word 0
tmp9451: .word 4
tmp9471: .word 8
tmp9491: .word 12
tmp9501: .word 16
x2: .word 0
tmp9512: .word 4
result2: .word 8
tmp9522: .word 12

.text


# (LABEL ISEVEN)
iseven:
# (3AC EQ #:|tmp939| X 0)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
seq $t0,$t0,$t1
lw $t1,tmp9390
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp939| #:|tmp940|)
lw $t0,tmp9390
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp940
# (RETURN 1)
li $v0,1
jr $ra
# (LABEL #:|tmp940|)
tmp940:
# (3AC EQ #:|tmp941| X 1)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
seq $t0,$t0,$t1
lw $t1,tmp9410
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp941| #:|tmp942|)
lw $t0,tmp9410
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp942
# (RETURN 0)
li $v0,0
jr $ra
# (LABEL #:|tmp942|)
tmp942:
# (3AC SUB #:|tmp943| X 1)
lw $t0,x0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp9430
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp943| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp9430
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL ISODD #:|tmp944|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal isodd
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9440
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (RETURN #:|tmp944|)
lw $v0,tmp9440
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL ISODD)
isodd:
# (3AC EQ #:|tmp945| X 0)
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
seq $t0,$t0,$t1
lw $t1,tmp9451
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp945| #:|tmp946|)
lw $t0,tmp9451
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp946
# (RETURN 0)
li $v0,0
jr $ra
# (LABEL #:|tmp946|)
tmp946:
# (3AC EQ #:|tmp947| X 1)
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
seq $t0,$t0,$t1
lw $t1,tmp9471
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp947| #:|tmp948|)
lw $t0,tmp9471
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp948
# (RETURN 1)
li $v0,1
jr $ra
# (LABEL #:|tmp948|)
tmp948:
# (3AC SUB #:|tmp949| X 1)
lw $t0,x1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp9491
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp949| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp9491
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL ISEVEN #:|tmp950|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iseven
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9501
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (RETURN #:|tmp950|)
lw $v0,tmp9501
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp952|)
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
lw $t7,x2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (PARAM X 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,x2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL ISEVEN #:|tmp951|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iseven
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9512
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY RESULT #:|tmp951|)
lw $t0,tmp9512
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,result2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT RESULT)
li $v0,1
lw $a0,result2
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