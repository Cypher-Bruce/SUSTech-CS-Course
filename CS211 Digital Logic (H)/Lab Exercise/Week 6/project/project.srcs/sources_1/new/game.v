`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 16:58:23
// Design Name: 
// Module Name: game
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


module game(
input [1:0] p1, p2,
output [3:0] o,
output tub_sel1, tub_sel2,
output [7:0] tub_signal1, tub_signal2
    );
    display d1(.p(p1), .tub_sel(tub_sel1), .tub_signal(tub_signal1));
    display d2(.p(p2), .tub_sel(tub_sel2), .tub_signal(tub_signal2));
    comparator c(.p1(p1), .p2(p2), .o(o));
endmodule
