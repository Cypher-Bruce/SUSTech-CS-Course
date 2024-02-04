`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 17:09:44
// Design Name: 
// Module Name: Practice2_tb
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


module Practice2_tb();
reg [1:0] tb_p1;
reg [1:0] tb_p2;
wire [2:0] tb_o;

Practice2_B dut(tb_p1, tb_p2, tb_o);
initial begin
    tb_p1 = 2'b00;
    tb_p2 = 2'b00;
    for(integer i = 0; i < 2; i = i + 1) begin
        #10 tb_p2 = tb_p2 + 1;
    end
    #10 tb_p1 = 2'b01; tb_p2 = 2'b00;
    for(integer i = 0; i < 2; i = i + 1) begin
        #10 tb_p2 = tb_p2 + 1;
    end
    #10 tb_p1 = 2'b10; tb_p2 = 2'b00;
    for(integer i = 0; i < 2; i = i + 1) begin
        #10 tb_p2 = tb_p2 + 1;
    end
    #10 $finish();
end
endmodule
