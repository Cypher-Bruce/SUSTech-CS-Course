`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/27 17:05:55
// Design Name: 
// Module Name: lab3_hw_tb
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


module lab3_hw_tb( );
reg tb_x,tb_y,tb_z;
wire tb_o1,tb_o2,tb_o3;
lab3_hw dut(.x(tb_x), .y(tb_y), .z(tb_z), .o1(tb_o1), .o2(tb_o2), .o3(tb_o3));

initial begin
    tb_x = 1'b0; tb_y = 1'b0; tb_z = 1'b0;
    #10 tb_z = 1'b1;
    #10 tb_y = 1'b1; tb_z = 1'b0;
    #10 tb_z = 1'b1;
    #10 tb_x = 1'b1; tb_y = 1'b0; tb_z = 1'b0;
    #10 tb_z = 1'b1;
    #10 tb_y = 1'b1; tb_z = 1'b0;
    #10 tb_z = 1'b1;
end
endmodule
