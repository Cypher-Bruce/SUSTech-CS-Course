module KeyDebouncer(
	input			slow_clk,
	input			rst_n,
	input			but_in,
	output			but_posedge,
	output			but_negedge,
	output	reg 	but_active
);
	// the smallest unit (1 key) of key debouncer
	// inputs:
	// - slow_clk: slow clock
	// - rst_n: reset signal
	// - but_in: input button signal
	// outputs:
	// - but_posedge: whether the button is pressed in this cycle
	// - but_negedge: whether the button is released in this cycle
	// - but_active: whether the button is pressed during the last cycle
	reg prev, cur;
	// prev: the button state in the last cycle
	// cur: the button state in this cycle
	always @(posedge slow_clk or negedge rst_n) begin
		if(~rst_n) begin
			prev <= 1'b0;
			cur  <= 1'b0;
			but_active <= 1'b0;
		end
		else begin
			{prev, cur, but_active} <= {cur, but_in, but_in};
		end
	end
	assign but_posedge = (~prev) & cur;
	// posedge = (last == 0) &&	(cur == 1)
	assign but_negedge = prev & (~cur);
	// negedge = (last == 1) && (cur == 0)
endmodule