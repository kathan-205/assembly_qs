# This code is to find the maximum value from an integer array-.
# s0 refers to the base of an array and t3 refers to the length of the integer array and the code works well for all integers except integer overflow and underflow.
.data
array:
	.word 5,-5,-15,56,78
.text
.global main

main:
	la s0,array
	li t3,5
	lw t0, 0(s0) # maximum value
	li t1, 0
loop_start:
	beq t1,t3,loop_end
	slli t2,t1,2
	add t4,s0,t2
	lw t5, 0(t4)
	bge t5,t0,update
	addi t1,t1,1
	jal zero, loop_start
update:
	mv t0,t5
	addi t1,t1,1
	jal zero, loop_start
	
loop_end:
	mv a0,t0
	li a7,1
	ecall
	
	li a7,10
	ecall
