`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 17:18:56
// Design Name: 
// Module Name: Func_tb
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


module Func_tb();
reg A, B, C;
wire Y;
Func myFunc(A, B, C, Y);

initial begin
    {C, B, A} = 3'b000;
    repeat(7) #10  {C, B, A} = {C, B, A} + 1;
    #10 $finish;
end
endmodule
