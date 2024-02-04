`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 16:59:22
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb();
reg clk, D;
wire Q1, nQ1, Q2, nQ2;
DFF_a dut1(clk,D,Q1,nQ1);
DFF_b dut2(clk,D,Q2,nQ2);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    D = 1'b0;
    #7 D = 1'b1;
    #14 D = 1'b0;
    #21 D = 1'b1;
    #28 D = 1'b0;
    #35 D = 1'b1;
    #45 $finish;
join
endmodule
