.include "macro_print_str.asm"
.data
tdata: .word 0x80
.text
main:

lw a0, tdata
li a7, 1
ecall

print_string("\n")
lw a0, tdata
li a7, 36
ecall

li a7, 10
ecall