# This code finds the largest exponent of 2 less than or equal to the register t1
.text
.global main
main:
	li t0,1    # current power of 2
	li t1,32   # input number
	li t3, 0   # exponent initialized to 0
	
loop_start:
	slli t2,t0,1
	bgt t2,t1,loop_end
	mv t0,t2
	addi t3, t3, 1
	jal x0,loop_start
loop_end:
	mv a0,t3
	li a7,1
	ecall
	
	li a7,10
	ecall

	 