

.data

linefeed:.asciiz "\n"
a0: .word 0
b0: .word 4
k0: .word 8
tmp8920: .word 12
tmp8930: .word 16
tmp8940: .word 20
tmp8950: .word 24
tmp8980: .word 28
tmp8990: .word 32
a1: .word 0
b1: .word 4
tmp9001: .word 8
tmp9011: .word 12
tmp9021: .word 16
tmp9031: .word 20
tmp9041: .word 24
a2: .word 0
b2: .word 4
tmp9092: .word 8
tmp9102: .word 12
t2: .word 16
tmp9112: .word 20
a3: .word 0
b3: .word 4
tmp9143: .word 8
tmp9153: .word 12
tmp9163: .word 16
x4: .word 0
y4: .word 4
tmp9194: .word 8
z4: .word 12
tmp9204: .word 16
tmp9214: .word 20
tmp9224: .word 24

.text


# (LABEL MODULO)
modulo:
# (2COPY K 0)
li $t0,0
lw $t7,k0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp896|)
tmp896:
# (3AC MULT #:|tmp892| K B)
lw $t0,k0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8920
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC SUB #:|tmp893| A #:|tmp892|)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp8920
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp8930
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC LTE #:|tmp894| B #:|tmp893|)
lw $t0,b0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp8930
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sle $t0,$t0,$t1
lw $t1,tmp8940
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp894| #:|tmp897|)
lw $t0,tmp8940
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp897
# (3AC ADD #:|tmp895| K 1)
lw $t0,k0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
add $t0,$t0,$t1
lw $t1,tmp8950
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY K #:|tmp895|)
lw $t0,tmp8950
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,k0
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp896|)
li $t0,0
beqz $t0,tmp896
# (LABEL #:|tmp897|)
tmp897:
# (3AC MULT #:|tmp898| K B)
lw $t0,k0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp8980
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC SUB #:|tmp899| A #:|tmp898|)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp8980
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp8990
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp899|)
lw $v0,tmp8990
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL GCDSUB)
gcdsub:
# (LABEL #:|tmp907|)
tmp907:
# (3AC EQ #:|tmp900| A B)
lw $t0,a1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
seq $t0,$t0,$t1
lw $t1,tmp9001
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC XOR #:|tmp901| 1 #:|tmp900|)
li $t0,1
lw $t1,tmp9001
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
xor $t0,$t0,$t1
lw $t1,tmp9011
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp901| #:|tmp908|)
lw $t0,tmp9011
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp908
# (3AC LT #:|tmp902| B A)
lw $t0,b1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,a1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp9021
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp902| #:|tmp906|)
lw $t0,tmp9021
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp906
# (3AC SUB #:|tmp903| A B)
lw $t0,a1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp9031
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY A #:|tmp903|)
lw $t0,tmp9031
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,a1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp905|)
li $t0,0
beqz $t0,tmp905
# (LABEL #:|tmp906|)
tmp906:
# (3AC SUB #:|tmp904| B A)
lw $t0,b1
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,a1
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp9041
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY B #:|tmp904|)
lw $t0,tmp9041
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,b1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp905|)
tmp905:
# (BRANCH BZ 0 #:|tmp907|)
li $t0,0
beqz $t0,tmp907
# (LABEL #:|tmp908|)
tmp908:
# (RETURN A)
lw $v0,a1
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL GCDMOD)
gcdmod:
# (LABEL #:|tmp912|)
tmp912:
# (3AC EQ #:|tmp909| B 0)
lw $t0,b2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
seq $t0,$t0,$t1
lw $t1,tmp9092
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC XOR #:|tmp910| 1 #:|tmp909|)
li $t0,1
lw $t1,tmp9092
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
xor $t0,$t0,$t1
lw $t1,tmp9102
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp910| #:|tmp913|)
lw $t0,tmp9102
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp913
# (2COPY T B)
lw $t0,b2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,t2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (PARAM A 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,a2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM B 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,b2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL MODULO #:|tmp911|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal modulo
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9112
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY B #:|tmp911|)
lw $t0,tmp9112
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,b2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY A T)
lw $t0,t2
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,a2
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp912|)
li $t0,0
beqz $t0,tmp912
# (LABEL #:|tmp913|)
tmp913:
# (RETURN A)
lw $v0,a2
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL GCDRECURSIVE)
gcdrecursive:
# (3AC EQ #:|tmp914| B 0)
lw $t0,b3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
seq $t0,$t0,$t1
lw $t1,tmp9143
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp914| #:|tmp918|)
lw $t0,tmp9143
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp918
# (RETURN A)
lw $v0,a3
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (BRANCH BZ 0 #:|tmp917|)
li $t0,0
beqz $t0,tmp917
# (LABEL #:|tmp918|)
tmp918:
# (PARAM A 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,a3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM B 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,b3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL MODULO #:|tmp915|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal modulo
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9153
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (PARAM B 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,b3
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM #:|tmp915| 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp9153
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL GCDRECURSIVE #:|tmp916|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal gcdrecursive
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9163
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (RETURN #:|tmp916|)
lw $v0,tmp9163
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL #:|tmp917|)
tmp917:
# (ENTRY #:|tmp922|)
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
lw $t7,x4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (INPUT Y)
li $v0,5
syscall
lw $t7,y4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (PARAM X 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,x4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM Y 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,y4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL GCDSUB #:|tmp919|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal gcdsub
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9194
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp919|)
lw $t0,tmp9194
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z4
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM X 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,x4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM Y 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,y4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL GCDMOD #:|tmp920|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal gcdmod
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9204
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp920|)
lw $t0,tmp9204
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z4
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM X 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,x4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM Y 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,y4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL GCDRECURSIVE #:|tmp921|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal gcdrecursive
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9214
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp921|)
lw $t0,tmp9214
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z4
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