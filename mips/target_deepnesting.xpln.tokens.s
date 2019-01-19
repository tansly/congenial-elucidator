

.data

linefeed:.asciiz "\n"
tmp7790: .word 0
tmp7800: .word 4
tmp7810: .word 8
tmp7820: .word 12
tmp7830: .word 16
tmp7840: .word 20
tmp7850: .word 24
tmp7860: .word 28
tmp7870: .word 32
tmp7880: .word 36
tmp7890: .word 40
tmp7900: .word 44
tmp7910: .word 48
tmp7920: .word 52
tmp7930: .word 56
tmp7940: .word 60
tmp7950: .word 64
tmp7960: .word 68
tmp7970: .word 72
tmp7980: .word 76
tmp7990: .word 80
tmp8000: .word 84
tmp8010: .word 88
tmp8020: .word 92
tmp8030: .word 96
tmp8040: .word 100
tmp8050: .word 104
tmp8060: .word 108
tmp8070: .word 112
tmp8080: .word 116
tmp8381: .word 0
x1: .word 4
tmp8391: .word 8

.text


# (LABEL TRIVIALLYOPTIMIZABLEDEEPNESTING)
triviallyoptimizabledeepnesting:
# (3AC LT #:|tmp779| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7790
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp779| #:|tmp837|)
lw $t0,tmp7790
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp837
# (3AC LT #:|tmp780| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7800
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp780| #:|tmp836|)
lw $t0,tmp7800
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp836
# (3AC LT #:|tmp781| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7810
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp781| #:|tmp835|)
lw $t0,tmp7810
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp835
# (3AC LT #:|tmp782| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7820
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp782| #:|tmp834|)
lw $t0,tmp7820
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp834
# (3AC LT #:|tmp783| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7830
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp783| #:|tmp833|)
lw $t0,tmp7830
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp833
# (3AC LT #:|tmp784| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7840
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp784| #:|tmp832|)
lw $t0,tmp7840
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp832
# (3AC LT #:|tmp785| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7850
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp785| #:|tmp831|)
lw $t0,tmp7850
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp831
# (3AC LT #:|tmp786| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7860
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp786| #:|tmp830|)
lw $t0,tmp7860
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp830
# (3AC LT #:|tmp787| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7870
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp787| #:|tmp829|)
lw $t0,tmp7870
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp829
# (3AC LT #:|tmp788| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7880
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp788| #:|tmp828|)
lw $t0,tmp7880
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp828
# (3AC LT #:|tmp789| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7890
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp789| #:|tmp827|)
lw $t0,tmp7890
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp827
# (3AC LT #:|tmp790| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7900
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp790| #:|tmp826|)
lw $t0,tmp7900
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp826
# (3AC LT #:|tmp791| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7910
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp791| #:|tmp825|)
lw $t0,tmp7910
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp825
# (3AC LT #:|tmp792| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7920
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp792| #:|tmp824|)
lw $t0,tmp7920
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp824
# (3AC LT #:|tmp793| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7930
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp793| #:|tmp823|)
lw $t0,tmp7930
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp823
# (3AC LT #:|tmp794| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7940
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp794| #:|tmp822|)
lw $t0,tmp7940
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp822
# (3AC LT #:|tmp795| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7950
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp795| #:|tmp821|)
lw $t0,tmp7950
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp821
# (3AC LT #:|tmp796| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7960
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp796| #:|tmp820|)
lw $t0,tmp7960
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp820
# (3AC LT #:|tmp797| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7970
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp797| #:|tmp819|)
lw $t0,tmp7970
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp819
# (3AC LT #:|tmp798| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7980
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp798| #:|tmp818|)
lw $t0,tmp7980
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp818
# (3AC LT #:|tmp799| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp7990
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp799| #:|tmp817|)
lw $t0,tmp7990
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp817
# (3AC LT #:|tmp800| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8000
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp800| #:|tmp816|)
lw $t0,tmp8000
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp816
# (3AC LT #:|tmp801| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8010
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp801| #:|tmp815|)
lw $t0,tmp8010
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp815
# (3AC LT #:|tmp802| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8020
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp802| #:|tmp814|)
lw $t0,tmp8020
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp814
# (3AC LT #:|tmp803| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8030
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp803| #:|tmp813|)
lw $t0,tmp8030
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp813
# (3AC LT #:|tmp804| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8040
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp804| #:|tmp812|)
lw $t0,tmp8040
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp812
# (3AC LT #:|tmp805| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8050
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp805| #:|tmp811|)
lw $t0,tmp8050
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp811
# (3AC LT #:|tmp806| 0 1)
li $t0,0
li $t1,1
slt $t0,$t0,$t1
lw $t1,tmp8060
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp806| #:|tmp810|)
lw $t0,tmp8060
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp810
# (3AC LT #:|tmp807| 1 0)
li $t0,1
li $t1,0
slt $t0,$t0,$t1
lw $t1,tmp8070
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (3AC XOR #:|tmp808| 1 #:|tmp807|)
li $t0,1
lw $t1,tmp8070
addi $t1,$t1,4
sub $t1,$fp,$t1
lw $t1,($t1)
xor $t0,$t0,$t1
lw $t1,tmp8080
addi $t1,$t1,4
sub $t1,$fp,$t1
sw $t0,($t1)
# (BRANCH BZ #:|tmp808| #:|tmp809|)
lw $t0,tmp8080
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
beqz $t0,tmp809
# (RETURN 42)
li $v0,42
jr $ra
# (LABEL #:|tmp809|)
tmp809:
# (LABEL #:|tmp810|)
tmp810:
# (LABEL #:|tmp811|)
tmp811:
# (LABEL #:|tmp812|)
tmp812:
# (LABEL #:|tmp813|)
tmp813:
# (LABEL #:|tmp814|)
tmp814:
# (LABEL #:|tmp815|)
tmp815:
# (LABEL #:|tmp816|)
tmp816:
# (LABEL #:|tmp817|)
tmp817:
# (LABEL #:|tmp818|)
tmp818:
# (LABEL #:|tmp819|)
tmp819:
# (LABEL #:|tmp820|)
tmp820:
# (LABEL #:|tmp821|)
tmp821:
# (LABEL #:|tmp822|)
tmp822:
# (LABEL #:|tmp823|)
tmp823:
# (LABEL #:|tmp824|)
tmp824:
# (LABEL #:|tmp825|)
tmp825:
# (LABEL #:|tmp826|)
tmp826:
# (LABEL #:|tmp827|)
tmp827:
# (LABEL #:|tmp828|)
tmp828:
# (LABEL #:|tmp829|)
tmp829:
# (LABEL #:|tmp830|)
tmp830:
# (LABEL #:|tmp831|)
tmp831:
# (LABEL #:|tmp832|)
tmp832:
# (LABEL #:|tmp833|)
tmp833:
# (LABEL #:|tmp834|)
tmp834:
# (LABEL #:|tmp835|)
tmp835:
# (LABEL #:|tmp836|)
tmp836:
# (LABEL #:|tmp837|)
tmp837:
# (RETURN 0)
li $v0,0
jr $ra
# (ENTRY #:|tmp839|)
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
# (CALL TRIVIALLYOPTIMIZABLEDEEPNESTING #:|tmp838|)
sw $ra,($sp)
sw $fp,4($sp)
move $fp,$sp
li $t0,512
sub $sp,$sp,$t0
jal triviallyoptimizabledeepnesting
move $sp,$fp
lw $fp,4($sp)
lw $ra,($sp)
lw $t7,tmp8381
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $v0,($t7)
# (2COPY X #:|tmp838|)
lw $t0,tmp8381
addi $t0,$t0,4
sub $t0,$fp,$t0
lw $t0,($t0)
lw $t7,x1
addi $t7,$t7,4
sub $t7,$fp,$t7
sw $t0,($t7)
# (OUTPUT X)
li $v0,1
lw $a0,x1
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