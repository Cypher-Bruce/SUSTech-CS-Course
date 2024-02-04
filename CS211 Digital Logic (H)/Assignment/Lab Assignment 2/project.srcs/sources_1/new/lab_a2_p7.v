`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 23:06:59
// Design Name: 
// Module Name: lab_a2_p7
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


module lab_a2_p7(
input [3:0] in,
output more1
    );
    MUX_16_1 m(in, {16'b1110100010000000}, more1);
endmodule
