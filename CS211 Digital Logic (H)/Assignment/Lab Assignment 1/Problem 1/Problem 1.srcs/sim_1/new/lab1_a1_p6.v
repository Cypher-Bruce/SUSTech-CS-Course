`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/06 00:31:33
// Design Name: 
// Module Name: lab1_a1_p6
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


module lab1_a1_p6();
    reg [3:0] in_tb;
    wire [3:0] out_xb2yg;
    wire [3:0] out_yg2xb;
    xb2yg dut1(.xb(in_tb), .yg(out_xb2yg));
    yg2xb dut2(.yg(in_tb), .xb(out_yg2xb));
    initial begin
    $monitor("%d %d %d", in_tb, out_xb2yg, out_yg2xb);
    in_tb = 4'b0000;
    repeat(15) #10 in_tb = in_tb + 1;
    #10 $finish;
    end
endmodule
