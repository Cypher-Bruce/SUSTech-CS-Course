`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/13 16:39:27
// Design Name: 
// Module Name: slow_clock_divider
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


module slow_clock_divider(
    input sys_clk, rst_n,
    output reg clk
);

parameter interval = 1000000;
reg [31:0] counter;

initial begin
    counter = 0;
    clk = 0;
end

always @(posedge sys_clk)begin
    if(counter >= interval)begin
        counter <= 0;
        clk <= ~clk;
    end else begin
        counter <= counter + 1;
    end
end
endmodule
