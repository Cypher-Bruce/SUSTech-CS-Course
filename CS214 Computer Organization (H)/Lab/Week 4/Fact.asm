.include "macro_print_str.asm"
.text
main:
print_string("Please enter an integer: ")
li a7, 5
ecall
#get n, and set in register a0
jal fact #call the fact function
li a7, 1
ecall
end

fact:
addi sp, sp, -8 #adjust stack for 2 items
sw ra, 4(sp) #save the return address
sw a0, 0(sp)#save the argument n

slti t0, a0, 1 #test for n<1
beq t0, zero, L1 #if n>=1,go to L1

addi a0, zero, 1 #else return 1
addi sp , sp , 8 #pop 2 items off stack
jr ra #return to caller

L1:
addi a0, a0, -1 #n>=1; argument gets(n 1)
jal fact #call fact with(n 1)

addi t1, a0, 0
lw a0, 0(sp)#return from jal : restore argument
lw ra , 4(sp)#restore the return address
addi sp , sp , 8 #adjust stack pointer to pop 2 items

mul a0, a0, t1 #return n*fact(n 1)
jr ra #return to the caller
