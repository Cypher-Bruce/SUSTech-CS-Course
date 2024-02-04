`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 13:00:54
// Design Name: 
// Module Name: lab_a2_p1
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


module lab_a2_p1(
input signed [2:0] a, b,
output sum_flag,
output [2:0] sum_absolut
    );
    wire [3:0] sum;
    assign sum = a + b;
    assign sum_flag = sum[3];
    assign sum_absolut = (sum_flag == 1'b1) ? -sum : sum;
endmodule
