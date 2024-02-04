`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 22:02:53
// Design Name: 
// Module Name: lab_a2_p3_tb
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


module lab_a2_p3_tb();
reg [2:0] a, b;
wire tub_sflag_sel, tub_sabsolut_sel;
wire [7:0] tub_sflag_control, tub_sabsolut_control;

lab_a2_p3 dut(a, b, tub_sflag_sel, tub_sabsolut_sel, tub_sflag_control, tub_sabsolut_control);

initial begin
    $monitor ("%d %d %d %d %d %d", a, b, tub_sflag_sel, tub_sabsolut_sel, tub_sflag_control, tub_sabsolut_control);
    {a, b} = 6'b000_000;
    repeat(63) #10 {a, b} = {a, b} + 1;
    #10 $finish;
end
endmodule
