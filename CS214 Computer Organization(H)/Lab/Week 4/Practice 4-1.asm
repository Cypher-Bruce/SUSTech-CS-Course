.data
tdata: .space 6
str1: .asciz "\nThe orignal string is: "
str2: .asciz "\nThe last two character of the string is: "
.text
la a0,tdata
addi a1, zero, 6
li a7, 8
ecall

la a0, str1
jal print_string
la a0, tdata
jal print_string
la a0, str2
jal print_string
la a0, tdata
addi a0, a0, 3
jal print_string
li a7, 10
ecall

print_string:
addi sp , sp , -8
sw ra , 4(sp)
sw a0, 0(sp)
li a7, 4
ecall
lw a0, 0(sp)
lw ra , 4(sp)
addi sp , sp , 8
jr ra
