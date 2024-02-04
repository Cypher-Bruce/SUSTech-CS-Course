`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/11 17:08:31
// Design Name: 
// Module Name: p3_tb
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


module p3_tb();
reg x_tb, y_tb, z_tb;
wire ans_tb;
p3 dut(.x(x_tb), .y(y_tb), .z(z_tb), .ans(ans_tb));
initial begin
    {x_tb, y_tb, z_tb} = 3'b000;
    repeat(7) begin
        #100 {x_tb, y_tb, z_tb} = {x_tb, y_tb, z_tb} + 1;
    end
    #100 $finish();
end
endmodule
