.data
.text
.globl main
main:
li a7, 5
ecall
mv t3, a0

li a7, 5
ecall
mv t4, a0

li t0, 1
li t1, 1
li a0, 0

fibon:
add t2, t0, t1
mv t0, t1
mv t1, t2
blt t0, t3, fibon
bgt t0, t4, exit
addi a0, a0, 1
j fibon

exit:
li a7, 1
ecall

li a7, 10
ecall