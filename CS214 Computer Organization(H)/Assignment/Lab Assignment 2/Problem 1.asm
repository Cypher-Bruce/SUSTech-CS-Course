.data
	vec1: .space 400
	vec2: .space 400
.text
	li a7, 5
	ecall
	
	mv t0, a0
	li t1, 0
	la t2, vec1
	
	load_loop1:
	addi t1, t1, 1
	bgt t1, t0, exit_load_loop1
	li a7, 6
	ecall
	fsw fa0, (t2)
	addi t2, t2, 4
	j load_loop1
	
	exit_load_loop1:
	li t1, 0
	la t2, vec2
	
	load_loop2:
	addi t1, t1, 1
	bgt t1, t0, exit_load_loop2
	li a7, 6
	ecall
	fsw fa0, (t2)
	addi t2, t2, 4
	j load_loop2
	
	exit_load_loop2:
	
	fmv.s.x ft0, x0
	li t1, 0
	la t2, vec1
	la t3, vec2
	
	calc_loop:
	addi t1, t1, 1
	bgt t1, t0, exit_calc_loop
	flw ft2, (t2)
	flw ft3, (t3)
	fmul.s ft1, ft2, ft3
	fadd.s ft0, ft0, ft1
	addi t2, t2, 4
	addi t3, t3, 4
	j calc_loop
	
	exit_calc_loop:
	fmv.s fa0, ft0
	li a7, 2
	ecall
	
	li a7, 10
	ecall