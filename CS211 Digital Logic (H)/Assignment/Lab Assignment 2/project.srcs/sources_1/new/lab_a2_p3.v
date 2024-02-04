`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 19:23:25
// Design Name: 
// Module Name: lab_a2_p3
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


module lab_a2_p3(
    input signed [2:0] a, b,
    output tub_sflag_sel, tub_sabsolut_sel,
    output [7:0] tub_sflag_control, tub_sabsolut_control
    );
    wire sum_flag;
    wire [2:0] sum_absolut;
    lab_a2_p1 adder(a, b, sum_flag, sum_absolut);
    lab_a2_p3_tub_display dis_flag({sum_flag, sum_flag, sum_flag, sum_flag}, sum_flag, tub_sflag_sel, tub_sflag_control);
    lab_a2_p3_tub_display dis_control({1'b0, sum_absolut}, {1'b1}, tub_sabsolut_sel, tub_sabsolut_control);
endmodule
