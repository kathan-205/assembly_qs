
# This is the code to find the sum of sum of all elements in an integer array. 
#This code works for all integers except integer overflow and underflow.
.data
array:
	.word 5,10,13,-2
.text
.global main
main:
	la s0,array
	li t3,4 #length of the array
	li t0, 0 #sum count
	li t1, 0 # index count

loop_start:
	bge t1,t3,loop_end
	slli t2,t1,2
	add t4,s0,t2
	lw t5, 0(t4)
	add t0,t0,t5
	addi t1,t1,1
	jal zero,loop_start
	
loop_end:
	mv a0,t0
	li a7,1
	ecall
	
	li a7,10
	ecall
