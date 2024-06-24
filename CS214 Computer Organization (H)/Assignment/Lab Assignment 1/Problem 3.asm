.data
str: .asciz
.text
.globl main
main:
la a0, str
li a1, 1000
li a7, 8
ecall

la t0, str
li t5, -1
li t4, 32

begin_check:
lb t1, 0(t0)
lb t2, 1(t0)
bne t2, t4, middle_check
beq t1, t4, middle_check
addi t5, t1, -73
bge t5, zero, exit
addi t5, t5, 26
j exit

middle_check:
addi t0, t0, 1
lb t1, -1(t0)
lb t2, 0(t0)
lb t3, 1(t0)

beqz t3, exit
bne t1, t4, middle_check
bne t3, t4, middle_check
beq t2, t4, middle_check
addi t5, t2, -65
bge t5, zero, exit
addi t5, t5, 26
j exit

exit:
mv a0, t5
li a7, 1
ecall

li a7, 10
ecall