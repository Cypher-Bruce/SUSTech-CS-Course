`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/14 14:16:22
// Design Name: 
// Module Name: clk_test
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


module clk_test(
    input sys_clk, en, rst_n,
    output reg [3:0] leds
);
    wire slow_clk;
    reg state;
    slow_clock_divider dut(sys_clk, rst_n, slow_clk);
    
    initial begin
        leds = 0;
    end
    
    always @(posedge slow_clk) begin
        state <= en;
    end
    
    always @(posedge state) begin
        leds <= leds + 1;
    end
endmodule
