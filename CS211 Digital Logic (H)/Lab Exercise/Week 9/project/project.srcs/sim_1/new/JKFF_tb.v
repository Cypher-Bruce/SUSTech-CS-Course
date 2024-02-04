`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 17:05:37
// Design Name: 
// Module Name: JKFF_tb
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


module JKFF_tb();
reg clk, J, K;
wire Q, nQ;
JKFF_2 dut(clk, J, K, Q, nQ);

initial begin
    clk = 1'b0;
    J = 1'b0;
    K = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    #30 J = 1'b1;
    #50 J = 1'b0;
    #60 K = 1'b1;
    #80 K = 1'b0;
    #90 J = 1'b1;
    #90 K = 1'b1;
    #120 J = 1'b0;
    #120 K = 1'b0;
    #130 $finish;
join
endmodule
