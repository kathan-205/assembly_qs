main:
	li a0,7
	addi t0,zero,1
	li t1,2
	blt a0,t1,loop_end

loop_start:
	mul t0,t0,a0
	addi a0,a0,-1
	bge a0,t1,loop_start

loop_end:
	mv a0,t0
	
	li a7,1
	ecall
	
	li a7,10
	ecall