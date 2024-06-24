`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/12 22:48:27
// Design Name: 
// Module Name: extract_immediate_tb
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


module extract_immediate_tb();
reg  [31:0] inst;
wire [31:0] immediate;
wire writeM;
wire writeR;
extract_immediate dut(inst, immediate, writeM, writeR);

initial begin
inst = 32'h00000293;
#10
inst = 32'hfff1c113;
#10
inst = 32'h06408093;
end
endmodule
