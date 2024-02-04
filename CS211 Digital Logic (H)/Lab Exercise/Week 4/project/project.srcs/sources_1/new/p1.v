module SignedAdder(
input [3:0] a,
input [3:0] b,
input signed [3:0] a_s,
input signed [3:0] b_s,
output [7:0] sum,
output signed [7:0]sum_s
);
assign sum = a + b;
assign sum_s = a_s + b_s;
endmodule