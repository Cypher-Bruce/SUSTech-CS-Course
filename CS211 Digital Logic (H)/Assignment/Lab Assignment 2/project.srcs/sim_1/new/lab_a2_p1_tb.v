`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/28 13:08:43
// Design Name: 
// Module Name: lab_a2_p1_tb
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
module lab_a2_p1_tb();

reg [2:0]a,b;
wire sum_flag;
wire [2:0] sum_absolut;

lab_a2_p1 dut(a, b, sum_flag, sum_absolut);

initial begin

$monitor ("%d %d %d %d", a, b, sum_flag, sum_absolut); 

{a,b} = 6'b000_000; 

repeat(63) #10 {a,b} = {a,b} + 1; 

#10 $finish; 

end

endmodule
