

.data

linefeed:.asciiz "\n"
x0: .word 0
y0: .word 4
r0: .word 8
tmp8560: .word 12
tmp8570: .word 16
tmp8580: .word 20
x1: .word 0
y1: .word 4
r1: .word 8
tmp8611: .word 12
tmp8621: .word 16
tmp8631: .word 20
x2: .word 0
y2: .word 4
r2: .word 8
tmp8662: .word 12
tmp8672: .word 16
tmp8682: .word 20
a3: .word 0
b3: .word 4
tmp8713: .word 8
tmp8723: .word 12
tmp8733: .word 16
tmp8743: .word 20
tmp8753: .word 24
tmp8763: .word 28
c3: .word 32
tmp8773: .word 36

.text


# (LABEL F)
f:
# (2COPY R 1)
li $t0,1
lw $t7,r0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp859|)
tmp859:
# (3AC LT #:|tmp856| 0 Y)
li $t0,0
lw $t1,y0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp8560
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp856| #:|tmp860|)
lw $t0,tmp8560
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp860
# (3AC MULT #:|tmp857| R X)
lw $t0,r0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,x0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8570
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY R #:|tmp857|)
lw $t0,tmp8570
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,r0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC SUB #:|tmp858| Y 1)
lw $t0,y0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp8580
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY Y #:|tmp858|)
lw $t0,tmp8580
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp859|)
li $t0,0
beqz $t0,tmp859
# (LABEL #:|tmp860|)
tmp860:
# (RETURN R)
lw $v0,r0
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL G)
g:
# (2COPY R 1)
li $t0,1
lw $t7,r1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp864|)
tmp864:
# (3AC LT #:|tmp861| 0 Y)
li $t0,0
lw $t1,y1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp8611
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp861| #:|tmp865|)
lw $t0,tmp8611
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp865
# (3AC MULT #:|tmp862| R X)
lw $t0,r1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,x1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8621
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY R #:|tmp862|)
lw $t0,tmp8621
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,r1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC SUB #:|tmp863| Y 1)
lw $t0,y1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp8631
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY Y #:|tmp863|)
lw $t0,tmp8631
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp864|)
li $t0,0
beqz $t0,tmp864
# (LABEL #:|tmp865|)
tmp865:
# (RETURN R)
lw $v0,r1
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL H)
h:
# (2COPY R 1)
li $t0,1
lw $t7,r2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp869|)
tmp869:
# (3AC LT #:|tmp866| 0 Y)
li $t0,0
lw $t1,y2
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp8662
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp866| #:|tmp870|)
lw $t0,tmp8662
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp870
# (3AC MULT #:|tmp867| R X)
lw $t0,r2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,x2
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8672
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY R #:|tmp867|)
lw $t0,tmp8672
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,r2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC SUB #:|tmp868| Y 1)
lw $t0,y2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp8682
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY Y #:|tmp868|)
lw $t0,tmp8682
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,y2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp869|)
li $t0,0
beqz $t0,tmp869
# (LABEL #:|tmp870|)
tmp870:
# (RETURN R)
lw $v0,r2
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp877|)
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
lw $t7,a3
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY B 8)
li $t0,8
lw $t7,b3
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC ADD #:|tmp871| A 1)
lw $t0,a3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
add $t0,$t0,$t1
lw $t1,tmp8713
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC DIV #:|tmp872| B 4)
lw $t0,b3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,4
div $t0,$t0,$t1
lw $t1,tmp8723
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp871| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp8713
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM #:|tmp872| 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp8723
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL F #:|tmp873|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal f
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8733
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC ADD #:|tmp874| 4 2)
li $t0,4
li $t1,2
add $t0,$t0,$t1
lw $t1,tmp8743
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC MULT #:|tmp875| #:|tmp873| #:|tmp874|)
lw $t0,tmp8733
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp8743
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8753
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC ADD #:|tmp876| 3 #:|tmp875|)
li $t0,3
lw $t1,tmp8753
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp8763
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY C #:|tmp876|)
lw $t0,tmp8763
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,c3
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT C)
li $v0,1
lw $a0,c3
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (RETURN C)
lw $v0,c3
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra