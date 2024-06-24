.data
str: .ascii "\nWelcome "
sid: .space 9
e1:  .asciz " to RISC V World"

.text
main:

li a7, 8
# to get a string
la a0, sid
li a1, 9
ecall

#complete code here
la t0, e1
la t1, sid
addi t1, t1, 8
lb t2, (t0)
sb t2, (t1)
lb t2, 1(t0)
sb t2, 1(t1)
lb t2, 2(t0)
sb t2, 2(t1)
lb t2, 3(t0)
sb t2, 3(t1)
lb t2, 4(t0)
sb t2, 4(t1)
lb t2, 5(t0)
sb t2, 5(t1)
lb t2, 6(t0)
sb t2, 6(t1)
lb t2, 7(t0)
sb t2, 7(t1)
lb t2, 8(t0)
sb t2, 8(t1)
lb t2, 9(t0)
sb t2, 9(t1)
lb t2, 10(t0)
sb t2, 10(t1)
lb t2, 11(t0)
sb t2, 11(t1)
lb t2, 12(t0)
sb t2, 12(t1)
lb t2, 13(t0)
sb t2, 13(t1)
lb t2, 14(t0)
sb t2, 14(t1)
lb t2, 15(t0)
sb t2, 15(t1)
lb t2, 16(t0)
sb t2, 16(t1)

li a7, 4
# to print a string
la a0, str
ecall
li a7, 10
# to exit
ecall
