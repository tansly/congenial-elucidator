

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
tmp9820: .word 256
tmp9831: .word 0
tmp9843: .word 0
tmp9853: .word 4
tmp9863: .word 8
tmp9873: .word 12
tmp9883: .word 16
tmp9893: .word 20
tmp9903: .word 24
tmp9913: .word 28
tmp9923: .word 32
tmp9933: .word 36
tmp9943: .word 40
tmp9953: .word 44
tmp9963: .word 48
tmp9973: .word 52
tmp9983: .word 56
tmp9993: .word 60
tmp10003: .word 64
tmp10013: .word 68
tmp10023: .word 72
tmp10033: .word 76
tmp10043: .word 80
tmp10053: .word 84
tmp10063: .word 88
tmp10073: .word 92
tmp10083: .word 96
tmp10093: .word 100
tmp10103: .word 104
tmp10113: .word 108
tmp10123: .word 112
n4: .word 0
product4: .word 4
j4: .word 8
tmp10424: .word 12
tmp10434: .word 16
tmp10444: .word 20
n5: .word 0
tmp10475: .word 4
tmp10485: .word 8
tmp10495: .word 12
tmp10515: .word 16
tmp10525: .word 20
tmp10535: .word 24
tmp10545: .word 28
tmp10555: .word 32
a6: .word 0
b6: .word 4
tmp10566: .word 8
tmp10576: .word 12
tmp10586: .word 16
tmp10596: .word 20
tmp10606: .word 24
a7: .word 0
b7: .word 4
k7: .word 8
tmp10657: .word 12
tmp10667: .word 16
tmp10677: .word 20
tmp10687: .word 24
tmp10717: .word 28
tmp10727: .word 32
n8: .word 0
tmp10738: .word 4
tmp10748: .word 8
tmp10758: .word 12
n9: .word 0
tmp10789: .word 4
tmp10799: .word 8
tmp108010: .word 0
z10: .word 4
tmp108110: .word 8
tmp108210: .word 12
tmp108310: .word 16
tmp108410: .word 20
tmp108510: .word 24
tmp108610: .word 28
tmp108710: .word 32
tmp108810: .word 36
tmp108910: .word 40
tmp109010: .word 44
tmp109110: .word 48

.text


# (LABEL ALOTOFARGUMENTS)
alotofarguments:
# (3AC ADD #:|tmp982| A PPPP)
lw $t0,a0
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,pppp0
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp9820
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp982|)
lw $v0,tmp9820
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
# (CALL ALOTOFARGUMENTS #:|tmp983|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal alotofarguments
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp9831
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (RETURN #:|tmp983|)
lw $v0,tmp9831
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL
   UNREASONABLYLONGFUNCTIONNAMEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA)
unreasonablylongfunctionnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
# (RETURN 0)
li $v0,0
jr $ra
# (LABEL TRIVIALLYOPTIMIZABLEDEEPNESTING)
triviallyoptimizabledeepnesting:
# (3AC LT #:|tmp984| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9843
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp984| #:|tmp1041|)
lw $t0,tmp9843
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1041
# (3AC LT #:|tmp985| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9853
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp985| #:|tmp1040|)
lw $t0,tmp9853
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1040
# (3AC LT #:|tmp986| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9863
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp986| #:|tmp1039|)
lw $t0,tmp9863
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1039
# (3AC LT #:|tmp987| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9873
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp987| #:|tmp1038|)
lw $t0,tmp9873
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1038
# (3AC LT #:|tmp988| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9883
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp988| #:|tmp1037|)
lw $t0,tmp9883
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1037
# (3AC LT #:|tmp989| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9893
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp989| #:|tmp1036|)
lw $t0,tmp9893
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1036
# (3AC LT #:|tmp990| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9903
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp990| #:|tmp1035|)
lw $t0,tmp9903
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1035
# (3AC LT #:|tmp991| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9913
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp991| #:|tmp1034|)
lw $t0,tmp9913
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1034
# (3AC LT #:|tmp992| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9923
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp992| #:|tmp1033|)
lw $t0,tmp9923
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1033
# (3AC LT #:|tmp993| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9933
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp993| #:|tmp1032|)
lw $t0,tmp9933
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1032
# (3AC LT #:|tmp994| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9943
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp994| #:|tmp1031|)
lw $t0,tmp9943
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1031
# (3AC LT #:|tmp995| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9953
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp995| #:|tmp1030|)
lw $t0,tmp9953
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1030
# (3AC LT #:|tmp996| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9963
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp996| #:|tmp1029|)
lw $t0,tmp9963
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1029
# (3AC LT #:|tmp997| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9973
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp997| #:|tmp1028|)
lw $t0,tmp9973
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1028
# (3AC LT #:|tmp998| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9983
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp998| #:|tmp1027|)
lw $t0,tmp9983
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1027
# (3AC LT #:|tmp999| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp9993
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp999| #:|tmp1026|)
lw $t0,tmp9993
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1026
# (3AC LT #:|tmp1000| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10003
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1000| #:|tmp1025|)
lw $t0,tmp10003
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1025
# (3AC LT #:|tmp1001| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10013
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1001| #:|tmp1024|)
lw $t0,tmp10013
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1024
# (3AC LT #:|tmp1002| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10023
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1002| #:|tmp1023|)
lw $t0,tmp10023
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1023
# (3AC LT #:|tmp1003| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10033
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1003| #:|tmp1022|)
lw $t0,tmp10033
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1022
# (3AC LT #:|tmp1004| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10043
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1004| #:|tmp1021|)
lw $t0,tmp10043
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1021
# (3AC LT #:|tmp1005| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10053
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1005| #:|tmp1020|)
lw $t0,tmp10053
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1020
# (3AC LT #:|tmp1006| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10063
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1006| #:|tmp1019|)
lw $t0,tmp10063
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1019
# (3AC LT #:|tmp1007| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10073
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1007| #:|tmp1018|)
lw $t0,tmp10073
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1018
# (3AC LT #:|tmp1008| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10083
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1008| #:|tmp1017|)
lw $t0,tmp10083
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1017
# (3AC LT #:|tmp1009| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10093
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1009| #:|tmp1016|)
lw $t0,tmp10093
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1016
# (3AC LT #:|tmp1010| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10103
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1010| #:|tmp1015|)
lw $t0,tmp10103
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1015
# (3AC LT #:|tmp1011| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10113
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1011| #:|tmp1014|)
lw $t0,tmp10113
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1014
# (3AC LT #:|tmp1012| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp10123
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1012| #:|tmp1013|)
lw $t0,tmp10123
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1013
# (RETURN 42)
li $v0,42
jr $ra
# (LABEL #:|tmp1013|)
tmp1013:
# (LABEL #:|tmp1014|)
tmp1014:
# (LABEL #:|tmp1015|)
tmp1015:
# (LABEL #:|tmp1016|)
tmp1016:
# (LABEL #:|tmp1017|)
tmp1017:
# (LABEL #:|tmp1018|)
tmp1018:
# (LABEL #:|tmp1019|)
tmp1019:
# (LABEL #:|tmp1020|)
tmp1020:
# (LABEL #:|tmp1021|)
tmp1021:
# (LABEL #:|tmp1022|)
tmp1022:
# (LABEL #:|tmp1023|)
tmp1023:
# (LABEL #:|tmp1024|)
tmp1024:
# (LABEL #:|tmp1025|)
tmp1025:
# (LABEL #:|tmp1026|)
tmp1026:
# (LABEL #:|tmp1027|)
tmp1027:
# (LABEL #:|tmp1028|)
tmp1028:
# (LABEL #:|tmp1029|)
tmp1029:
# (LABEL #:|tmp1030|)
tmp1030:
# (LABEL #:|tmp1031|)
tmp1031:
# (LABEL #:|tmp1032|)
tmp1032:
# (LABEL #:|tmp1033|)
tmp1033:
# (LABEL #:|tmp1034|)
tmp1034:
# (LABEL #:|tmp1035|)
tmp1035:
# (LABEL #:|tmp1036|)
tmp1036:
# (LABEL #:|tmp1037|)
tmp1037:
# (LABEL #:|tmp1038|)
tmp1038:
# (LABEL #:|tmp1039|)
tmp1039:
# (LABEL #:|tmp1040|)
tmp1040:
# (LABEL #:|tmp1041|)
tmp1041:
# (RETURN 0)
li $v0,0
jr $ra
# (LABEL ITERATIVEFACTORIAL)
iterativefactorial:
# (2COPY PRODUCT 1)
li $t0,1
lw $t7,product4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (2COPY J 1)
li $t0,1
lw $t7,j4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp1045|)
tmp1045:
# (3AC LTE #:|tmp1042| J N)
lw $t0,j4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,n4
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sle $t0,$t0,$t1
lw $t1,tmp10424
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1042| #:|tmp1046|)
lw $t0,tmp10424
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1046
# (3AC MULT #:|tmp1043| PRODUCT J)
lw $t0,product4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,j4
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp10434
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY PRODUCT #:|tmp1043|)
lw $t0,tmp10434
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,product4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (3AC ADD #:|tmp1044| J 1)
lw $t0,j4
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
add $t0,$t0,$t1
lw $t1,tmp10444
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY J #:|tmp1044|)
lw $t0,tmp10444
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,j4
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp1045|)
li $t0,0
beqz $t0,tmp1045
# (LABEL #:|tmp1046|)
tmp1046:
# (RETURN PRODUCT)
lw $v0,product4
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL RECURSIVEFIBONACCI)
recursivefibonacci:
# (3AC EQ #:|tmp1047| N 1)
lw $t0,n5
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
seq $t0,$t0,$t1
lw $t1,tmp10475
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC EQ #:|tmp1048| N 2)
lw $t0,n5
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,2
seq $t0,$t0,$t1
lw $t1,tmp10485
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC OR #:|tmp1049| #:|tmp1047| #:|tmp1048|)
lw $t0,tmp10475
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp10485
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
or $t0,$t0,$t1
lw $t1,tmp10495
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1049| #:|tmp1050|)
lw $t0,tmp10495
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1050
# (RETURN 1)
li $v0,1
jr $ra
# (LABEL #:|tmp1050|)
tmp1050:
# (3AC SUB #:|tmp1051| N 1)
lw $t0,n5
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp10515
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp1051| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp10515
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp1052|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp10525
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC SUB #:|tmp1053| N 2)
lw $t0,n5
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,2
sub $t0,$t0,$t1
lw $t1,tmp10535
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (PARAM #:|tmp1053| 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,tmp10535
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp1054|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp10545
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC ADD #:|tmp1055| #:|tmp1052| #:|tmp1054|)
lw $t0,tmp10525
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp10545
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
add $t0,$t0,$t1
lw $t1,tmp10555
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp1055|)
lw $v0,tmp10555
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL EUCLIDEANGCD)
euclideangcd:
# (LABEL #:|tmp1063|)
tmp1063:
# (3AC EQ #:|tmp1056| A B)
lw $t0,a6
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b6
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
seq $t0,$t0,$t1
lw $t1,tmp10566
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC XOR #:|tmp1057| 1 #:|tmp1056|)
li $t0,1
lw $t1,tmp10566
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
xor $t0,$t0,$t1
lw $t1,tmp10576
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1057| #:|tmp1064|)
lw $t0,tmp10576
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1064
# (3AC LT #:|tmp1058| B A)
lw $t0,b6
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,a6
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
slt $t0,$t0,$t1
lw $t1,tmp10586
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1058| #:|tmp1062|)
lw $t0,tmp10586
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1062
# (3AC SUB #:|tmp1059| A B)
lw $t0,a6
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b6
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp10596
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY A #:|tmp1059|)
lw $t0,tmp10596
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,a6
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp1061|)
li $t0,0
beqz $t0,tmp1061
# (LABEL #:|tmp1062|)
tmp1062:
# (3AC SUB #:|tmp1060| B A)
lw $t0,b6
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,a6
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp10606
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY B #:|tmp1060|)
lw $t0,tmp10606
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,b6
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp1061|)
tmp1061:
# (BRANCH BZ 0 #:|tmp1063|)
li $t0,0
beqz $t0,tmp1063
# (LABEL #:|tmp1064|)
tmp1064:
# (RETURN A)
lw $v0,a6
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL MODULO)
modulo:
# (2COPY K 0)
li $t0,0
lw $t7,k7
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (LABEL #:|tmp1069|)
tmp1069:
# (3AC MULT #:|tmp1065| K B)
lw $t0,k7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b7
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp10657
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC SUB #:|tmp1066| A #:|tmp1065|)
lw $t0,a7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp10657
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp10667
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC LTE #:|tmp1067| B #:|tmp1066|)
lw $t0,b7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp10667
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sle $t0,$t0,$t1
lw $t1,tmp10677
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1067| #:|tmp1070|)
lw $t0,tmp10677
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1070
# (3AC ADD #:|tmp1068| K 1)
lw $t0,k7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,1
add $t0,$t0,$t1
lw $t1,tmp10687
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (2COPY K #:|tmp1068|)
lw $t0,tmp10687
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,k7
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (BRANCH BZ 0 #:|tmp1069|)
li $t0,0
beqz $t0,tmp1069
# (LABEL #:|tmp1070|)
tmp1070:
# (3AC MULT #:|tmp1071| K B)
lw $t0,k7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,b7
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
mul $t0,$t0,$t1
lw $t1,tmp10717
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC SUB #:|tmp1072| A #:|tmp1071|)
lw $t0,a7
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t1,tmp10717
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp10727
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp1072|)
lw $v0,tmp10727
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL ISEVEN)
iseven:
# (PARAM N 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,n8
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (PARAM 2 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,2
sw $t0,($t7)
# (CALL MODULO #:|tmp1073|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal modulo
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp10738
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC EQ #:|tmp1074| #:|tmp1073| 0)
lw $t0,tmp10738
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
li $t1,0
seq $t0,$t0,$t1
lw $t1,tmp10748
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp1074| #:|tmp1077|)
lw $t0,tmp10748
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp1077
# (RETURN 1)
li $v0,1
jr $ra
# (BRANCH BZ 0 #:|tmp1076|)
li $t0,0
beqz $t0,tmp1076
# (LABEL #:|tmp1077|)
tmp1077:
# (3AC SUB #:|tmp1075| 0 1)
li $t0,0
li $t1,1
sub $t0,$t0,$t1
lw $t1,tmp10758
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp1075|)
lw $v0,tmp10758
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (LABEL #:|tmp1076|)
tmp1076:
# (LABEL ISODD)
isodd:
# (PARAM N 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
lw $t0,n9
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
sw $t0,($t7)
# (CALL ISEVEN #:|tmp1078|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iseven
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp10789
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (3AC SUB #:|tmp1079| 1 #:|tmp1078|)
li $t0,1
lw $t1,tmp10789
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
sub $t0,$t0,$t1
lw $t1,tmp10799
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (RETURN #:|tmp1079|)
lw $v0,tmp10799
addi $v0,$v0,4
sub $v0,$fp,$v0
lw $v0,($v0)
jr $ra
# (ENTRY #:|tmp1091|)
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
# (CALL TESTALOTOFARGUMENTS #:|tmp1080|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal testalotofarguments
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108010
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1080|)
lw $t0,tmp108010
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (CALL
   UNREASONABLYLONGFUNCTIONNAMEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
   #:|tmp1081|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal unreasonablylongfunctionnameaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108110
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1081|)
lw $t0,tmp108110
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (CALL TRIVIALLYOPTIMIZABLEDEEPNESTING #:|tmp1082|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal triviallyoptimizabledeepnesting
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108210
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1082|)
lw $t0,tmp108210
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 20 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,20
sw $t0,($t7)
# (CALL ITERATIVEFACTORIAL #:|tmp1083|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iterativefactorial
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108310
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1083|)
lw $t0,tmp108310
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 30 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,30
sw $t0,($t7)
# (CALL RECURSIVEFIBONACCI #:|tmp1084|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal recursivefibonacci
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108410
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1084|)
lw $t0,tmp108410
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 50500 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,50500
sw $t0,($t7)
# (PARAM 100899 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,100899
sw $t0,($t7)
# (CALL EUCLIDEANGCD #:|tmp1085|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal euclideangcd
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108510
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1085|)
lw $t0,tmp108510
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 100 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,100
sw $t0,($t7)
# (PARAM 7 4)
li $t7,4
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,7
sw $t0,($t7)
# (CALL MODULO #:|tmp1086|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal modulo
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108610
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1086|)
lw $t0,tmp108610
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 2 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,2
sw $t0,($t7)
# (CALL ISEVEN #:|tmp1087|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iseven
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108710
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1087|)
lw $t0,tmp108710
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 3 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,3
sw $t0,($t7)
# (CALL ISEVEN #:|tmp1088|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal iseven
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108810
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1088|)
lw $t0,tmp108810
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 4 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,4
sw $t0,($t7)
# (CALL ISODD #:|tmp1089|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal isodd
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp108910
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1089|)
lw $t0,tmp108910
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall
# (PARAM 4 0)
li $t7,0
addi $t7,$t7,4
sub $t7,$sp,$t7
li $t0,4
sw $t0,($t7)
# (CALL ISODD #:|tmp1090|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal isodd
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp109010
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY Z #:|tmp1090|)
lw $t0,tmp109010
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,z10
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT Z)
li $v0,1
lw $a0,z10
addi $a0,$a0,4
sub $a0,$fp,$a0
lw $a0,($a0)
syscall
li $v0,4
la $a0,linefeed
syscall