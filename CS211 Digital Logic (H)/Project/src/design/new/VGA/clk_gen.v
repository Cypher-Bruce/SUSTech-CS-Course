`timescale 1ns/1ps
`define DIVIDED_CLK 3'b100
module clk_gen (
    input   wire            clk,
    input   wire            rst_n,
    output  reg             vga_clk
);

    reg     [2:0]           cnt;

initial begin
    cnt <= 0;
    vga_clk <= 0;
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) 
        cnt <= 0;
    else begin
        if(cnt == `DIVIDED_CLK - 1'd1) begin
            cnt <= 0;
            vga_clk <= ~vga_clk;
        end
        else begin
            cnt <= cnt + 1'd1;
            vga_clk <= vga_clk;
        end
    end
end 

endmodule