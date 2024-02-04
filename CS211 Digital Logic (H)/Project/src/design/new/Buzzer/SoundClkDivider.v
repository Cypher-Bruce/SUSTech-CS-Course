module SoundClkDivider(
	input				clk,
	input				rst_n,
	input		[2:0]	note_number,
	input				en,
	output	reg	[2:0]	division
);
	`include "SoundParams.v"
	reg	[`BIT_LENGTH - 1:0]	num;
	reg						flag;   

	always@(posedge clk or negedge rst_n) begin
		if(rst_n == 1'b0)
			num <= `BIT_LENGTH'b0;
		else if(num == 2**(`BIT_LENGTH -11) - 1)
			num <= `BIT_LENGTH'b0;
		else 
			num <= num + 1;
	end

	always@(posedge clk or negedge rst_n) begin
		if(rst_n == 1'b0)
			flag <= 1'b0;
		else if(num == 2**(`BIT_LENGTH -11)  - 1)
			flag <= 1'b1; 
		else
			flag <= 1'b0;
	end

	always@(posedge clk or negedge rst_n) begin
		if(rst_n == 1'b0)
			division <= 3'd0;
		else if (flag == 1'b1 && division == note_number - 1)
			division <= 3'd0;
		else if (flag == 1'b1)
			division <= division + 1;
		else 
			division <= division;
	end
endmodule