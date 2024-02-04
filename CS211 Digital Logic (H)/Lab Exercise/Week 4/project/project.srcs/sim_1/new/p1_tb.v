`timescale 1 ns /1 ps
module tb_adder();
reg [3:0] a;
reg [3:0] b;
reg signed [3:0] a_s;
reg signed [3:0] b_s;
wire [7:0] sum;
wire signed [7:0] sum_s;
SignedAdder DUT(
.a(a),
.b(b),
.sum(sum),
.a_s(a_s),
.b_s(b_s),
.sum_s(sum_s)
);
initial begin
    {a,b} = 8'b1001_1001;
    {a_s,b_s} = 8'b1001_1001;
end

always begin
    #10 
    {a,b} = {a,b} - 1;
    {a_s,b_s} = {a_s,b_s} - 1;
end
endmodule