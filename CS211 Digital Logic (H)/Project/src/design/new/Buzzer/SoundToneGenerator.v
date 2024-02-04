module SoundToneGenerator(
	input	wire			clk,
	input					rst_n,
	input	wire	[1:0]	shift,
	input	wire	[2:0]	note, 
	input					en,
	output	reg				pwm
);
	`include "SoundParams.v"

	reg		[19:0]		cnt0	;
	reg		[19:0]		pre_set	;
	wire	[19:0]		pre_div	;

	initial begin
		pwm = 0;
	end

	always @(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
			cnt0 <= 0;
		end
		else begin
			if(cnt0 < pre_set)
				cnt0 <= cnt0 + 1;            
			else
				cnt0 <= 0;
		end
	end

	always @(*) begin
		if (rst_n) begin
			case({shift, note})
				5'b00000: pre_set = `C2; // Middle octave
				5'b00001: pre_set = `D2;
				5'b00010: pre_set = `E2;
				5'b00011: pre_set = `F2;
				5'b00100: pre_set = `G2;
				5'b00101: pre_set = `A2;
				5'b00110: pre_set = `B2;
				5'b00111: pre_set = `C4;
				
				5'b01000: pre_set = `C3; // Lower octave
				5'b01001: pre_set = `D3;
				5'b01010: pre_set = `E3;
				5'b01011: pre_set = `F3;
				5'b01100: pre_set = `G3;
				5'b01101: pre_set = `A3;
				5'b01110: pre_set = `B3;
				5'b01111: pre_set = `C2;
				
				5'b10000: pre_set = `C4; // Higher octave
				5'b10001: pre_set = `D4;
				5'b10010: pre_set = `E4;
				5'b10011: pre_set = `F4;
				5'b10100: pre_set = `G4;
				5'b10101: pre_set = `A4;
				5'b10110: pre_set = `B4;
				5'b10111: pre_set = `C5;
				default: pre_set = 0;
			endcase
		end
		else begin
			pre_set = 0;
		end
	end

	assign pre_div = pre_set >> 1;
	
	//Generate the PWM signals
	always @(posedge clk or negedge rst_n) begin
		if(!rst_n) begin
			pwm <= 1'b1;
		end
		else begin
			if(cnt0 < pre_div) begin
				pwm <= 1'b1;
			end
			else begin
				pwm <= 1'b0;
			end
		end
	end
endmodule