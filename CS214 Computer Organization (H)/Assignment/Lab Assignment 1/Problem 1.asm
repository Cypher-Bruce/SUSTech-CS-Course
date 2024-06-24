.data
str: .asciz
.text
.globl main
main:
la a0, str
li a1, 1000
li a7, 8
ecall
li a7 4
ecall
li a7, 10
ecall