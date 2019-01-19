

.data

linefeed:.asciiz "\n"
tmp9320: .word 0
tmp9330: .word 4
tmp9340: .word 8
tmp9350: .word 12
a0: .word 16
tmp9360: .word 20
tmp9380: .word 24

.text


# (ENTRY #:|tmp938|)
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
# (3AC ADD #:|tmp932| 4 5)
li $t0,4
li $t1,5
add $t0,$t0,$t1
lw $t1,tmp9320
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC MULT #:|tmp933| 3 #:|tmp932|)
li $t0,3
lw $t1,tmp9320
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp9330
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC MULT #:|tmp934| 2 3)
li $t0,2
li $t1,3
mul $t0,$t0,$t1
lw $t1,tmp9340
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC ADD #:|tmp935| #:|tmp933| #:|tmp934|)
lw $t0,tmp9330
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp9340
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp9350
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY A #:|tmp935|)
lw $t0,tmp9350
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC LT #:|tmp936| 5 A)
li $t0,5
lw $t1,a0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp9360
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp936| #:|tmp937|)
lw $t0,tmp9360
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp937
# (2COPY A 5)
li $t0,5
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp937|)
tmp937:
# (OUTPUT A)
li $v0,1
lw $a0,a0
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN A)
lw $v0,a0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra