module moor_s1s2_rst_syn(
input clk, rst, x,
output reg [1:0]state, next_s
);

always @(posedge clk)
begin
    if(rst)
    begin
        state <= 2'b01;
        //next_s <= 2'b10;
    end else begin
        state <= next_s;
    end
end

always @* 
begin
    case(state)
        2'b01: if(x) next_s = 2'b01; else next_s = 2'b10;
        2'b10: if(x) next_s = 2'b10; else next_s = 2'b01;
    endcase
end
endmodule