`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 16:53:52
// Design Name: 
// Module Name: TFF_en_tb
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


module TFF_en_tb();
reg clk, T, E;
wire Q1, nQ1, Q2, nQ2;
TFF_en dut1(clk, T, E, Q1, nQ1);
TFF dut2(clk, T, Q2, nQ2);

initial begin
   E = 1'b0;
   clk = 1'b0;
   T = 1'b0; 
   forever #5 clk = ~clk;
end

initial fork
    #10 E = 1'b1;
    #40 T = 1'b1;
    #90 T = 1'b0;
    #120 E = 1'b0;
    #130 E = 1'b1;
    #170 T = 1'b1;
    #210 T = 1'b0;
    #250 $finish;
join
endmodule
