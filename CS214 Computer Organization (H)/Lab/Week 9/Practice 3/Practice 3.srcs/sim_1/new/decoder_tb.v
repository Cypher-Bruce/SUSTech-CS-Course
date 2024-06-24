`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 17:01:39
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg [4:0] read_reg_1;
reg [4:0] read_reg_2;
reg [4:0] write_reg;
reg [31:0] write_data;
reg write_reg_flag;
reg [31:0] inst;
reg clk;
reg rst_n;
wire [31:0] read_data_1;
wire [31:0] read_data_2;
wire [31:0] imme;

decoder dut(read_reg_1, read_reg_2, write_reg, write_data, write_reg_flag, inst, clk, rst_n, read_data_1, read_data_2, imme);

initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
end

initial begin
    rst_n = 1'b0;
    #10
    rst_n = 1'b1;
    read_reg_1 = 5'b00001;
    write_reg = 5'b00001;
    write_reg_flag = 1'b1;
    write_data = 1;
    #10
    read_reg_1 = 5'b00010;
    write_reg = 5'b00010;
    write_data = 16;
    #10
    read_reg_1 = 5'b00011;
    write_reg = 5'b00011;
    write_data = 256;
    #10
    write_reg_flag = 1'b0;
    read_reg_1 = 5'b00000;
    #2
    read_reg_1 = 5'b00001;
    #2
    read_reg_1 = 5'b00010;
    #2
    read_reg_1 = 5'b00011;
    #2 
    $finish;
end
endmodule
