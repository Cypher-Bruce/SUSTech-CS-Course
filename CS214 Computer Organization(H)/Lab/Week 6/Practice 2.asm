.data
m1: .half -48
m2: .half 322

.text
lh t0, m1
lh t1, m2

add t2, zero, zero
add a0, zero, zero
add t5, zero, zero 

li t3, 0x8000
and t4, t0, t3
beqz t4, check_multiplier
not t0, t0
addi t0, t0, 1
addi t5, t5, 1

check_multiplier:
and t4, t1, t3
beqz t4, start_loop
not t1, t1
addi t1, t1, 1
addi t5, t5, 1

start_loop:

loop:

andi t4, t1, 1
beqz t4, jumpAdd

add t2, t2, t0

jumpAdd:
slli t0, t0, 1

srai t1, t1, 1

addi a0, a0, 1

li t6, 16
blt a0, t6, loop

andi t4, t5, 1  # Check if there was an odd number of negations
beqz t4, done
not t2, t2
addi t2, t2, 1

done:
mv a0, t2

li a7, 1
ecall

li a7, 10
ecall
