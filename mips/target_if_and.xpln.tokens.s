

.data

linefeed:.asciiz "\n"
tmp9230: .word 0
tmp9240: .word 4
tmp9250: .word 8
tmp9260: .word 12
a0: .word 16
tmp9270: .word 20
tmp9280: .word 24
tmp9290: .word 28
tmp9310: .word 32

.text


# (ENTRY #:|tmp931|)
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
# (3AC ADD #:|tmp923| 4 5)
li $t0,4
li $t1,5
add $t0,$t0,$t1
lw $t1,tmp9230
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC MULT #:|tmp924| 3 #:|tmp923|)
li $t0,3
lw $t1,tmp9230
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp9240
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC MULT #:|tmp925| 2 3)
li $t0,2
li $t1,3
mul $t0,$t0,$t1
lw $t1,tmp9250
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC ADD #:|tmp926| #:|tmp924| #:|tmp925|)
lw $t0,tmp9240
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp9250
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp9260
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY A #:|tmp926|)
lw $t0,tmp9260
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC LT #:|tmp927| A 5)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,5
slt $t0,$t0,$t1
lw $t1,tmp9270
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC LT #:|tmp928| 1 A)
li $t0,1
lw $t1,a0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp9280
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC AND #:|tmp929| #:|tmp927| #:|tmp928|)
lw $t0,tmp9270
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp9280
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
and $t0,$t0,$t1
lw $t1,tmp9290
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp929| #:|tmp930|)
lw $t0,tmp9290
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp930
# (2COPY A 5)
li $t0,5
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY A 6)
li $t0,6
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY A 7)
li $t0,7
lw $t7,a0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp930|)
tmp930:
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
# (RETURN 0)
li $v0,0
jr $ra