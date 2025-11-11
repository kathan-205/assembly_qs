# This is the code to find the length of the null terminated string using pointers.

.data
    	test_string: .asciz "hello"

.text
.globl main
main:
	la a0, test_string  
    	jal ra, strlen       
    	li a7, 1 
	ecall
	li a7, 10
	ecall
strlen:
	add t0,zero, a0
loop_start:
	lbu t1,0(a0)
	beqz t1, loop_end
	addi a0,a0,1
	jal zero, loop_start

loop_end:
	sub a0,a0,t0
	jalr zero, ra,0
	