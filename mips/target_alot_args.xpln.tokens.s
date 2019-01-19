

.data

linefeed:.asciiz "\n"
a0: .word 0
b0: .word 4
c0: .word 8
d0: .word 12
e0: .word 16
f0: .word 20
g0: .word 24
h0: .word 28
i0: .word 32
j0: .word 36
k0: .word 40
l0: .word 44
m0: .word 48
n0: .word 52
o0: .word 56
p0: .word 60
aa0: .word 64
bb0: .word 68
cc0: .word 72
dd0: .word 76
ee0: .word 80
ff0: .word 84
gg0: .word 88
hh0: .word 92
ii0: .word 96
jj0: .word 100
kk0: .word 104
ll0: .word 108
mm0: .word 112
nn0: .word 116
oo0: .word 120
pp0: .word 124
aaa0: .word 128
bbb0: .word 132
ccc0: .word 136
ddd0: .word 140
eee0: .word 144
fff0: .word 148
ggg0: .word 152
hhh0: .word 156
iii0: .word 160
jjj0: .word 164
kkk0: .word 168
lll0: .word 172
mmm0: .word 176
nnn0: .word 180
ooo0: .word 184
ppp0: .word 188
aaaa0: .word 192
bbbb0: .word 196
cccc0: .word 200
dddd0: .word 204
eeee0: .word 208
ffff0: .word 212
gggg0: .word 216
hhhh0: .word 220
iiii0: .word 224
jjjj0: .word 228
kkkk0: .word 232
llll0: .word 236
mmmm0: .word 240
nnnn0: .word 244
oooo0: .word 248
pppp0: .word 252
tmp7750: .word 256
tmp7761: .word 0
tmp7772: .word 0
z2: .word 4
tmp7782: .word 8

.text


# (LABEL ALOTOFARGUMENTS)
alotofarguments:
# (3AC ADD #:|tmp775| A PPPP)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,pppp0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp7750
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp775|)
lw $v0,tmp7750
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL TESTALOTOFARGUMENTS)
testalotofarguments:
# (PARAM 1 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,1
sw $t0,($t7)
# (PARAM 2 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,2
sw $t0,($t7)
# (PARAM 3 8)
li $t7,8
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,3
sw $t0,($t7)
# (PARAM 4 12)
li $t7,12
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,4
sw $t0,($t7)
# (PARAM 5 16)
li $t7,16
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,5
sw $t0,($t7)
# (PARAM 6 20)
li $t7,20
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,6
sw $t0,($t7)
# (PARAM 7 24)
li $t7,24
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,7
sw $t0,($t7)
# (PARAM 8 28)
li $t7,28
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,8
sw $t0,($t7)
# (PARAM 9 32)
li $t7,32
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,9
sw $t0,($t7)
# (PARAM 10 36)
li $t7,36
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,10
sw $t0,($t7)
# (PARAM 11 40)
li $t7,40
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,11
sw $t0,($t7)
# (PARAM 12 44)
li $t7,44
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,12
sw $t0,($t7)
# (PARAM 13 48)
li $t7,48
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,13
sw $t0,($t7)
# (PARAM 14 52)
li $t7,52
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,14
sw $t0,($t7)
# (PARAM 15 56)
li $t7,56
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,15
sw $t0,($t7)
# (PARAM 16 60)
li $t7,60
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,16
sw $t0,($t7)
# (PARAM 17 64)
li $t7,64
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,17
sw $t0,($t7)
# (PARAM 18 68)
li $t7,68
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,18
sw $t0,($t7)
# (PARAM 19 72)
li $t7,72
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,19
sw $t0,($t7)
# (PARAM 20 76)
li $t7,76
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,20
sw $t0,($t7)
# (PARAM 21 80)
li $t7,80
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,21
sw $t0,($t7)
# (PARAM 22 84)
li $t7,84
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,22
sw $t0,($t7)
# (PARAM 23 88)
li $t7,88
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,23
sw $t0,($t7)
# (PARAM 24 92)
li $t7,92
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,24
sw $t0,($t7)
# (PARAM 25 96)
li $t7,96
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,25
sw $t0,($t7)
# (PARAM 26 100)
li $t7,100
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,26
sw $t0,($t7)
# (PARAM 27 104)
li $t7,104
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,27
sw $t0,($t7)
# (PARAM 28 108)
li $t7,108
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,28
sw $t0,($t7)
# (PARAM 29 112)
li $t7,112
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,29
sw $t0,($t7)
# (PARAM 30 116)
li $t7,116
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,30
sw $t0,($t7)
# (PARAM 31 120)
li $t7,120
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,31
sw $t0,($t7)
# (PARAM 32 124)
li $t7,124
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,32
sw $t0,($t7)
# (PARAM 33 128)
li $t7,128
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,33
sw $t0,($t7)
# (PARAM 34 132)
li $t7,132
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,34
sw $t0,($t7)
# (PARAM 35 136)
li $t7,136
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,35
sw $t0,($t7)
# (PARAM 36 140)
li $t7,140
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,36
sw $t0,($t7)
# (PARAM 37 144)
li $t7,144
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,37
sw $t0,($t7)
# (PARAM 38 148)
li $t7,148
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,38
sw $t0,($t7)
# (PARAM 39 152)
li $t7,152
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,39
sw $t0,($t7)
# (PARAM 40 156)
li $t7,156
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,40
sw $t0,($t7)
# (PARAM 41 160)
li $t7,160
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,41
sw $t0,($t7)
# (PARAM 42 164)
li $t7,164
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,42
sw $t0,($t7)
# (PARAM 43 168)
li $t7,168
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,43
sw $t0,($t7)
# (PARAM 44 172)
li $t7,172
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,44
sw $t0,($t7)
# (PARAM 45 176)
li $t7,176
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,45
sw $t0,($t7)
# (PARAM 46 180)
li $t7,180
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,46
sw $t0,($t7)
# (PARAM 47 184)
li $t7,184
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,47
sw $t0,($t7)
# (PARAM 48 188)
li $t7,188
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,48
sw $t0,($t7)
# (PARAM 49 192)
li $t7,192
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,49
sw $t0,($t7)
# (PARAM 50 196)
li $t7,196
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,50
sw $t0,($t7)
# (PARAM 51 200)
li $t7,200
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,51
sw $t0,($t7)
# (PARAM 52 204)
li $t7,204
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,52
sw $t0,($t7)
# (PARAM 53 208)
li $t7,208
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,53
sw $t0,($t7)
# (PARAM 54 212)
li $t7,212
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,54
sw $t0,($t7)
# (PARAM 55 216)
li $t7,216
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,55
sw $t0,($t7)
# (PARAM 56 220)
li $t7,220
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,56
sw $t0,($t7)
# (PARAM 57 224)
li $t7,224
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,57
sw $t0,($t7)
# (PARAM 58 228)
li $t7,228
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,58
sw $t0,($t7)
# (PARAM 59 232)
li $t7,232
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,59
sw $t0,($t7)
# (PARAM 60 236)
li $t7,236
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,60
sw $t0,($t7)
# (PARAM 61 240)
li $t7,240
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,61
sw $t0,($t7)
# (PARAM 62 244)
li $t7,244
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,62
sw $t0,($t7)
# (PARAM 63 248)
li $t7,248
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,63
sw $t0,($t7)
# (PARAM 64 252)
li $t7,252
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,64
sw $t0,($t7)
# (CALL ALOTOFARGUMENTS #:|tmp776|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal alotofarguments
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp7761
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (RETURN #:|tmp776|)
lw $v0,tmp7761
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp778|)
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
# (CALL TESTALOTOFARGUMENTS #:|tmp777|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal testalotofarguments
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp7772
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp777|)
lw $t0,tmp7772
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