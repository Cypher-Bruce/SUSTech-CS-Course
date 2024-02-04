`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/29 17:16:26
// Design Name: 
// Module Name: P3_tb
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


module P3_tb();
    reg rst_n, x_in,clk;
    wire [2:0] state, nextstate;
    P3 dut(rst_n, x_in,clk,state, nextstate);
    
    initial begin
        rst_n = 1'b0;
        x_in = 1'b0;
        clk = 1'b0;
        forever #5 clk = ~clk;
    end
    
    initial fork
        #10 rst_n = 1'b1;
        #20 x_in = 1'b1;
        #80 x_in = 1'b0;
        #90 rst_n = 1'b0;
        #100 rst_n = 1'b1;
        #110 x_in = 1'b1;
        #170 x_in = 1'b0;
        #200 $finish;
    join
endmodule
