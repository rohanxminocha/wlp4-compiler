.import print
.import init
.import new
.import delete
lis $4
.word 4
lis $11
.word 1
lis $10
.word print
lis $13
.word init
lis $14
.word new
lis $15
.word delete
beq $0,$0,wain
; end prolog

fnf:
sw $30,-4($30)
sw $31,-8($30)
lw $3,-12($30)
sw $3,-16($30) ; push
add $3,$4,$0
lw $5,-16($30) ; pop
add $3,$5,$3
lw $31,-8($30)
jr $31
fng:
sw $30,-4($30)
sw $31,-8($30)
lw $3,-12($30)
sw $3,-16($30) ; push
lis $3
.word 9
lw $5,-16($30) ; pop
add $3,$5,$3
lw $31,-8($30)
jr $31
fnbar:
sw $30,-4($30)
sw $31,-8($30)
sw $11,-12($30)
add $3,$4,$11
add $1,$3,$0
lis $5
.word -12
add $30,$30,$5
jalr $14
lw $30,8($30)
bne $3,$0,1
add $3,$11,$0
sw $3,-12($30)
add $3,$11,$11
sw $3,-16($30) ; push
lw $3,-12($30)
sw $3,-20($30) ; push
sub $3,$4,$11
mult $3,$4
mflo $3
lw $5,-20($30) ; pop
add $3,$5,$3
lw $5,-16($30) ; pop
sw $5,0($3)
lw $3,-12($30)
beq $3,$11,dl0
add $1,$0,$3
lis $5
.word -12
add $30,$30,$5
jalr $15
lw $30,8($30)
dl0:
lis $3
.word 10
lw $31,-8($30)
jr $31
fnfoo:
sw $30,-4($30)
sw $31,-8($30)
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
slt $3,$5,$3
beq $3,$0,se1
add $3,$0,$0
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee1
se1:
ee1:
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
slt $3,$3,$5
beq $3,$0,se2
add $3,$11,$0
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee2
se2:
ee2:
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
bne $3,$5,se3
add $3,$11,$11
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee3
se3:
ee3:
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
beq $3,$5,se4
sub $3,$4,$11
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee4
se4:
ee4:
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
slt $3,$3,$5
bne $3,$0,se5
add $3,$4,$0
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee5
se5:
ee5:
lw $3,-12($30)
sw $3,-40($30) ; push
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnf
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-44($30) ; push
lis $5
.word -32
add $30,$30,$5
lis $13
.word fng
jalr $13
lw $30,28($30)
lw $5,-32($30) ; pop
slt $3,$5,$3
bne $3,$0,se6
add $3,$4,$11
add $1,$3,$0
lis $5
.word -28
add $30,$30,$5
jalr $10
lw $30,24($30)
beq $0,$0,ee6
se6:
ee6:
lis $5
.word -28
add $30,$30,$5
lis $13
.word fnbar
jalr $13
lw $30,24($30)
sw $3,-32($30) ; push
lw $3,-16($30)
sw $3,-36($30) ; push
lis $5
.word -36
add $30,$30,$5
lis $13
.word fnbar
jalr $13
lw $30,32($30)
mult $3,$4
mflo $3
lw $5,-36($30) ; pop
add $3,$5,$3
lw $5,-32($30) ; pop
sw $5,0($3)
lw $3,-12($30)
sw $3,-32($30) ; push
lw $3,-16($30)
sw $3,-36($30) ; push
lis $3
.word 10
mult $3,$4
mflo $3
lw $5,-36($30) ; pop
add $3,$5,$3
lw $3,0($3)
lw $5,-32($30) ; pop
add $3,$5,$3
sw $3,-32($30) ; push
lw $3,-20($30)
lw $5,-32($30) ; pop
add $3,$5,$3
sw $3,-32($30) ; push
lw $3,-24($30)
lw $5,-32($30) ; pop
add $3,$5,$3
sw $3,-32($30) ; push
lw $3,-28($30)
lw $3,0($3)
lw $5,-32($30) ; pop
add $3,$5,$3
lw $31,-8($30)
jr $31
wain:
sw $30,-4($30)
sw $31,-8($30)
sw $1,-12($30)
sw $2,-16($30)
add $2,$0,$0
lis $5
.word -16
add $30,$30,$5
jalr $13
lw $30,12($30)
sw $11,-20($30)
lis $3
.word 40
add $1,$3,$0
lis $5
.word -20
add $30,$30,$5
jalr $14
lw $30,16($30)
bne $3,$0,1
add $3,$11,$0
sw $3,-20($30)
lw $3,-12($30)
sw $3,-32($30) ; push
lw $3,-20($30)
sw $3,-36($30) ; push
lw $3,-12($30)
sw $3,-40($30) ; push
lw $3,-16($30)
sw $3,-44($30) ; push
lis $3
.word -12
add $3,$3,$30
sw $3,-48($30) ; push
lis $5
.word -20
add $30,$30,$5
lis $13
.word fnfoo
jalr $13
lw $30,16($30)

; epilog
lw $31,-8($30)
jr $31
