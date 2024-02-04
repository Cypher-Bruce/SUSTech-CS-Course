`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/12 10:20:01
// Design Name: 
// Module Name: T_FF_pos_rst_n_by_JKFF_tb
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


module tb_T_FF_pos_rst_n();
reg T, clk, rst_n;
wire Q, Qn;
T_FF_pos_rst_n_by_JKFF tff(T, clk, rst_n, Q, Qn);

initial begin
    $monitor("%d %d %d %d %d", T, clk, rst_n, Q, Qn);
    T = 1'b0;
    clk = 1'b1;
    rst_n = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    forever #15 T = ~T;
    #43 rst_n = 1'b1;
    #100 $finish; 
join
endmodule
