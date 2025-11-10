# This is the code to find the no of odd elements in an integer array.

.data
array:
	.word  2, 4, 6,7
.text
.global main

main:
	la s0,array
	li t3,4 #length of the array
	li t0,0
	li t1,0

loop_start:
	beq t1,t3, loop_end
	slli t2,t1,2
	add t4,s0,t2
	lw t5,0(t4)
	andi t6,t5,1
	beq t6,zero,next
	addi t0,t0,1
	
next:
	addi t1,t1,1
	jal zero,loop_start
	
loop_end:
	mv a0,t0
	li a7,1
	ecall
	
	li a7,10
	ecall
