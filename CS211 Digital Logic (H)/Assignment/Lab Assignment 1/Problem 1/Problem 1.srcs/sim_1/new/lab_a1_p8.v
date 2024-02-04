`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 01:01:36
// Design Name: 
// Module Name: lab_a1_p8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab_a1_p8();
reg [1:0] a_tb;
reg [1:0] b_tb;
wire [2:0] sum_tb;
lab3_practic_add2bit dut(.a(a_tb), .b(b_tb), .sum(sum_tb));
initial begin
$monitor("%d %d %d", a_tb, b_tb, sum_tb);
a_tb = 2'b00;
b_tb = 2'b00;
repeat(3) #10 b_tb = b_tb + 1;
#10 b_tb = 2'b00;
    a_tb = a_tb + 1;
repeat(3) #10 b_tb = b_tb + 1;
#10 b_tb = 2'b00;
    a_tb = a_tb + 1;
repeat(3) #10 b_tb = b_tb + 1;
#10 b_tb = 2'b00;
    a_tb = a_tb + 1;
repeat(3) #10 b_tb = b_tb + 1;
#10 $finish;
end
endmodule
