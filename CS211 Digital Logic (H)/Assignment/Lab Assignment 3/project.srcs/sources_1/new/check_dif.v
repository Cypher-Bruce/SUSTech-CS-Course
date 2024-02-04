`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/12 11:10:24
// Design Name: 
// Module Name: check_dif
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


module check_dif(
    input clk, rst, x,
    output reg z
);

reg llx, lx, next_z;

always @(posedge clk)
begin
     if(rst) begin
        z <= 0;
        lx <= 0;
        llx <= 0;
        next_z <= 0;
     end else begin
        lx <= x;
        llx <= lx;
        z <= next_z;
     end
end

always @* 
begin
    if(lx != llx)
    begin
        next_z = 1;
    end else begin
        next_z = 0;
    end
end
endmodule
