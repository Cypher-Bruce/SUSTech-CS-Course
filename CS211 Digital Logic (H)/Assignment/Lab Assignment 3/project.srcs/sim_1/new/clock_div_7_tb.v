`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 22:57:04
// Design Name: 
// Module Name: clock_div_7_tb
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


module clock_div_7_tb( );

reg clk,rst_n;
wire clk_out;

clock_div_7 dut(clk,rst_n,clk_out);

initial begin
    $monitor ("%d %d %d", clk, rst_n, clk_out);
    clk = 1'b1;
    rst_n = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    #16 rst_n = 1'b1;
    #500 $finish;
join
endmodule
