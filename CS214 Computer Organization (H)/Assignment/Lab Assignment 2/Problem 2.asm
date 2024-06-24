.text
	li a1, 0x3F800000 # 1
	li a2, 0x40000000 # 2
	li a3, 0x40400000 # 3
	li a4, 0x41700000 # 15
	li a5, 0x41A00000 # 20
	li a6, 0x00000000 # 0
	fmv.s.x fa1, a1
	fmv.s.x fa2, a2
	fmv.s.x fa3, a3
	fmv.s.x fa4, a4
	fmv.s.x fa5, a5
	fmv.s.x fa6, a6
	
	li a7, 6
	ecall
	
	fge.s t0, fa0, fa4
	fge.s t1, fa0, fa5
	
	fmv.s fa7, fa0
	beqz t0, exit
	
	fsub.s ft0, fa0, fa4
	fadd.s fa7, fa7, ft0
	beqz t1, exit
	
	fsub.s ft0, fa0, fa5
	fadd.s fa7, fa7, ft0
	
	exit:
	
	fmv.s fa0, fa7
	li a7, 2
	ecall
	
	li a7, 10
	ecall