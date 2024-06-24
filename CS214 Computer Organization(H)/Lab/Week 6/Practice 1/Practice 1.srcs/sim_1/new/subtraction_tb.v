`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/26 15:04:08
// Design Name: 
// Module Name: subtraction_tb
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


module subtraction_tb( ); //verilog
reg [2:0] in1,in2;
wire result;
wire [2:0] sum;
subtraction ua(in1,in2,sum,result);
initial begin
{in1,in2} = 6'b0;
repeat(63) #10 {in1,in2} = {in1,in2} + 1;
#10 $finish;
end
endmodule
