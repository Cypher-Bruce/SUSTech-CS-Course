.data
	switch: .word 0x11fc0
	button: .word 0x11fc4
	led: .word 0x11fc8
	seven_seg_tube: .word 0x11fcc
.text
	lw t0, switch
	lw t1, led
	lw t2, seven_seg_tube
	lw a0, (t0)
	lw a1, (t0)
	sw a0, (t1)
	sw a1, (t2)
