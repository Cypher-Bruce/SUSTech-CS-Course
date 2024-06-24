.data
	const_zero: .double 0
	const_one: .double 1.0
.text

li a7, 7
ecall

la t1, const_zero
fld ft1, (t1)

la t1, const_one
fld ft3, (t1) # sum
fld ft2, (t1) # denominator
fld ft4, (t1) # constant 1

loop:
fadd.d ft1, ft1, ft4
fdiv.d ft5, ft4, ft1
fmul.d ft2, ft2, ft5

fgt.d t0, ft2, fa0
beqz t0, exit_loop

fadd.d ft3, ft3, ft2
j loop

exit_loop:
fmv.d fa0, ft3
li a7, 3
ecall

li a7, 10
ecall