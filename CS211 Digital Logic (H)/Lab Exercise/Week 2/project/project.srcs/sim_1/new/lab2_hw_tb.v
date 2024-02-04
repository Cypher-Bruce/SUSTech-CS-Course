`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/20 17:12:43
// Design Name: 
// Module Name: lab2_hw_tb
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


module lab2_hw_tb();
    reg tb_x;
    reg tb_y;
    reg tb_z;
    wire tb_out;
    
    lab2_hw dut(.x(tb_x),.y(tb_y),.z(tb_z),.f(tb_out));
    initial begin
        tb_x = 0'b0; tb_y = 0'b0; tb_z = 0'b0;
        #10 tb_z = 0'b1;
        #10 tb_y = 0'b1; tb_z = 0'b0;
        #10 tb_z = 0'b1;
        #10 tb_x = 0'b1; tb_y = 0'b0; tb_z = 0'b0;
        #10 tb_z = 0'b1;
        #10 tb_y = 0'b1; tb_z = 0'b0;
        #10 tb_z = 0'b1;
    end
endmodule
