.data
	const_two: .double 2
	const_zero: .double 0
	const_threshold: .double 0.000001
.text
	li a7, 7
	ecall
	fmv.d fa1, fa0
	
	li a7, 7
	ecall
	fmv.d fa2, fa0
	
	li a7, 7
	ecall
	fmv.d fa3, fa0
	
	li a7, 7
	ecall
	fmv.d fa4, fa0
	
	li a7, 7
	ecall
	fmv.d fa5, fa0
	
	li a7, 7
	ecall
	fmv.d fa6, fa0
	
	la t1, const_two
	fld ft11, (t1)
	
	la t1, const_zero
	fld ft10, (t1)
	
	la t1, const_threshold
	fld, ft9, (t1) 
	
	loop:
	fadd.d ft0, fa5, fa6
	fdiv.d ft0, ft0, ft11 # ft0 = x3
	fmv.d ft1, ft0 # ft1 = ft0
	
	fmv.d ft2, ft10 # ft2 = 0 result
	fadd.d ft2, ft2, fa4
	fmul.d ft3, ft1, fa3
	fadd.d ft2, ft2, ft3
	fmul.d ft1, ft1, ft0
	fmul.d ft3, ft1, fa2
	fadd.d ft2, ft2, ft3
	fmul.d ft1, ft1, ft0
	fmul.d ft3, ft1, fa1
	fadd.d ft2, ft2, ft3
	
	flt.d t0, ft2, ft10
	fmv.d ft5, ft2
	beqz t0, continue
	fneg.d ft5, ft5
	continue:
	
	fge.d t0, ft5, ft9
	beqz t0, exit
	
	fmv.d ft4, ft2 # ft4 = f(x3)
	fmv.d ft1, fa5 # ft1 = x1
	fmv.d ft2, ft10 # ft2 = 0 result
	fadd.d ft2, ft2, fa4
	fmul.d ft3, ft1, fa3
	fadd.d ft2, ft2, ft3
	fmul.d ft1, ft1, fa5
	fmul.d ft3, ft1, fa2
	fadd.d ft2, ft2, ft3
	fmul.d ft1, ft1, fa5
	fmul.d ft3, ft1, fa1
	fadd.d ft2, ft2, ft3
	
	fmul.d ft1, ft4, ft2
	fge.d t0, ft1, ft10
	beqz t0, action2
	action1:
	fmv.d fa5, ft0
	j loop
	action2:
	fmv.d fa6, ft0
	j loop
	
	exit:
	fmv.d fa0, ft0
	li a7, 3
	ecall
	
	li a7, 10
	ecall
	
	
	