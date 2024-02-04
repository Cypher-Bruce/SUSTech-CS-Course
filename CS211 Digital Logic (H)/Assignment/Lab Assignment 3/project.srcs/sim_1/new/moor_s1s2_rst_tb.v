`timescale 1ns / 1ps
module moor_s1s2_rst_tb();

reg clk, rst, x;
wire [1:0] state, next_s, state_asy, next_s_asy;

moor_s1s2_rst_syn dut_asy(clk, rst, x,state, next_s);
moor_s1s2_rst_asyn dut_syn(clk, rst, x,state_asy, next_s_asy);

initial begin
    $monitor ("%d %d %d %d %d %d %d", x, clk, rst, state, next_s, state_asy,next_s_asy);
    x = 1'b0;
    clk = 1'b1;
    rst = 1'b0;
    forever #5 clk = ~clk;
end

initial fork
    forever #16 x = ~x;
    #3 rst = 1'b1;
    #26 rst = 1'b0;
    #120 $finish;
join
endmodule
