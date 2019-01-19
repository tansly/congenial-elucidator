

.data

linefeed:.asciiz "\n"
a0: .word 0
b0: .word 4
r0: .word 8
tmp10920: .word 12
tmp10930: .word 16
tmp10940: .word 20
tmp10970: .word 24

.text


# (ENTRY #:|tmp1097|)
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
# (2COPY A 2)
li $t0,2
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY B 8)
li $t0,8
lw $t7,b0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY R 1)
li $t0,1
lw $t7,r0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp1095|)
tmp1095:
# (3AC LT #:|tmp1092| 0 B)
li $t0,0
lw $t1,b0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp10920
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1092| #:|tmp1096|)
lw $t0,tmp10920
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1096
# (3AC MULT #:|tmp1093| R A)
lw $t0,r0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,a0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp10930
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY R #:|tmp1093|)
lw $t0,tmp10930
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,r0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC SUB #:|tmp1094| B 1)
lw $t0,b0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp10940
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY B #:|tmp1094|)
lw $t0,tmp10940
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,b0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp1095|)
li $t0,0
beqz $t0,tmp1095
# (LABEL #:|tmp1096|)
tmp1096:
# (OUTPUT R)
li $v0,1
lw $a0,r0
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN R)
lw $v0,r0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra