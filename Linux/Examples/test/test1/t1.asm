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

fnbinsearch:
sw $30,-4($30)
sw $31,-8($30)
add $3,$0,$0
sw $3,-24($30)
add $3,$0,$0
sw $3,-28($30)
add $3,$0,$0
sw $3,-32($30)
add $3,$0,$0
sw $3,-36($30)
add $3,$0,$0
sw $3,-40($30) ; push
add $3,$11,$0
lw $5,-40($30) ; pop
sub $3,$5,$3
sw $3,-24($30)
lw $3,-16($30)
sw $3,-40($30) ; push
add $3,$11,$0
lw $5,-40($30) ; pop
sub $3,$5,$3
sw $3,-28($30)
sw0:
lw $3,-32($30)
sw $3,-40($30) ; push
lw $3,-28($30)
lw $5,-40($30) ; pop
slt $3,$3,$5
bne $3,$0,ew0
lw $3,-32($30)
sw $3,-40($30) ; push
lw $3,-28($30)
lw $5,-40($30) ; pop
add $3,$5,$3
sw $3,-40($30) ; push
add $3,$11,$11
lw $5,-40($30) ; pop
div $5,$3
mflo $3
sw $3,-36($30)
lw $3,-12($30)
sw $3,-40($30) ; push
lw $3,-36($30)
mult $3,$4
mflo $3
lw $5,-40($30) ; pop
add $3,$5,$3
lw $3,0($3)
sw $3,-40($30) ; push
lw $3,-20($30)
lw $5,-40($30) ; pop
bne $3,$5,se1
lw $3,-36($30)
sw $3,-24($30)
lw $3,-16($30)
sw $3,-32($30)
beq $0,$0,ee1
se1:
lw $3,-12($30)
sw $3,-40($30) ; push
lw $3,-36($30)
mult $3,$4
mflo $3
lw $5,-40($30) ; pop
add $3,$5,$3
lw $3,0($3)
sw $3,-40($30) ; push
lw $3,-20($30)
lw $5,-40($30) ; pop
slt $3,$5,$3
beq $3,$0,se2
lw $3,-36($30)
sw $3,-40($30) ; push
add $3,$11,$0
lw $5,-40($30) ; pop
add $3,$5,$3
sw $3,-32($30)
beq $0,$0,ee2
se2:
lw $3,-36($30)
sw $3,-40($30) ; push
add $3,$11,$0
lw $5,-40($30) ; pop
sub $3,$5,$3
sw $3,-28($30)
ee2:
ee1:
beq $0,$0,sw0
ew0:
lw $3,-24($30)
lw $31,-8($30)
jr $31
wain:
sw $30,-4($30)
sw $31,-8($30)
sw $1,-12($30)
sw $2,-16($30)
lis $5
.word -16
add $30,$30,$5
jalr $13
lw $30,12($30)
lw $3,-12($30)
sw $3,-28($30) ; push
lw $3,-16($30)
sw $3,-32($30) ; push
sub $3,$4,$11
sw $3,-36($30) ; push
lis $5
.word -16
add $30,$30,$5
lis $13
.word fnbinsearch
jalr $13
lw $30,12($30)

; epilog
lw $31,-8($30)
jr $31
