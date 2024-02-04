module T_FF_pos_rst_n_by_JKFF(
input T, clk, rst_n,
output Q,Qn
);

wire j,k;
and and1(j, T, rst_n);
or or1(k, T, ~rst_n);

JK_FF_Pos dut(j,k,clk,Q,Qn);

endmodule
