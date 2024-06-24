.include "macro_print_str.asm"
.data
.text

print_string("Please input a positive integer n: ")
li a7, 5
ecall

jal ra, fibon

print_string("F(n)=")
mv a0, a1
li a7, 1
ecall
end

fibon: 
addi sp, sp, -12   
sw ra, 0(sp)       
sw a0, 4(sp)       

li a1, 1           
beq a0, zero, fibon_exit  # If n == 0
beq a0, a1, fibon_exit    # If n == 1

addi a0, a0, -1    # f(n-1)
jal ra, fibon      
sw a1, 8(sp)       

addi a0, a0, -1    # f(n-2)
jal ra, fibon     
lw t0, 8(sp)      
add a1, a1, t0    

fibon_exit:
lw ra, 0(sp)       
lw a0, 4(sp)       
addi sp, sp, 12    

jr ra              
