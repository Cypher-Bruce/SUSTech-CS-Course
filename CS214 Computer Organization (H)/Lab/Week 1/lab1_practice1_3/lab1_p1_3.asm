.data #C
buf: .byte 0xC3
.text
start:
lw x1, 0(x0)
sw x1, 4(x31)
j start