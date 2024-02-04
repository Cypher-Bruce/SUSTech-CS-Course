`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/12 11:20:19
// Design Name: 
// Module Name: check_dif_tb
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


module check_dif_tb();

reg clk, rst, x;
wire z;

check_dif dut(clk, rst, x, z);

initial begin
    $monitor("%d %d %d %d", clk, rst, x, z);
    clk = 1'b1;
    rst = 1'b1;
    x = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    #6 rst = 1'b0;
    #12 x = 1'b1;
    #48 x = 1'b0;
    #88 x = 1'b1;
    #128 x = 1'b0;
    #148 x = 1'b1;
    #160 $finish;
join
endmodule
