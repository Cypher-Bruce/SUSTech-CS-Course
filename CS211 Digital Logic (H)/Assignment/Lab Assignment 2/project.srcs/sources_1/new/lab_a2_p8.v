`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/29 00:09:39
// Design Name: 
// Module Name: lab_a2_p8
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


module lab_a2_p8(
input [3:0] in,
output more1
    );
    MUX_8_1 m(.sel(in[3:1]), .data_in((in[0] == 0) ? 8'b10000000 : 8'b11101000), .data_out(more1));
endmodule
