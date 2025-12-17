# Lexicographic string comparison demo
# Sa < Sb  -> prints -1
# Sa == Sb -> prints 0
# Sa > Sb  -> prints 1

.data
Sa: .asciz "grade"
Sb: .asciz "gradeA"

.text
.globl main
.globl LexiCmp

main:
    la   a0, Sa            
    la   a1, Sb            
    jal  ra, LexiCmp       

    li   a7, 1             
    ecall

    li   a7, 10            
    ecall

LexiCmp:
CompareLoop:
    lbu  t0, 0(a0)         
    lbu  t1, 0(a1)         

    blt  t0, t1, SaLess    
    blt  t1, t0, SaGreater 

    beq  t0, zero, SaEqual 

    addi a0, a0, 1         
    addi a1, a1, 1         
    j    CompareLoop

SaLess:
    li   a0, -1
    jr   ra

SaGreater:
    li   a0, 1
    jr   ra

SaEqual:
    li   a0, 0
    jr   ra
