module FreeMode(
	input           	clk,
	input           	rst_n,
	input		[7:0]	buts,
	input 		 		but_up,
	input 		 		but_center,
	input 		 		but_down,
	output				pwm,
	output				sd,
	output	reg [1:0] 	octave
);
	// mudule for free mode
	// inputs:
	// - clk: system clock
	// - rst_n: reset signal
	// - buts: 8 buttons for input notes
	// - but_up: button for octave up
	// - but_center: button for octave reset
	// - but_down: button for octave down
	// outputs:
	// - pwm: pwm signal for buzzer
	// - sd: sd signal for buzzer
	// - octave: 2-bit signal for octave shift

	// a block to handle octave shift
	`include "TopParams.v"
	always @(posedge clk or negedge rst_n) begin
		if (~rst_n) begin
			octave <= 2'b00;
		end
		else begin
			case ({but_up, but_center, but_down})
				3'b100: octave <= `octaveUpCode;
				3'b010: octave <= `octaveResetCode;
				3'b001: octave <= `octaveDownCode;
				default: octave <= octave;
			endcase
		end
	end

	// instantiation of the buzzer module
	// we place the buzzer module here to make the code more reusable
	SoundTop SoundTop_inst_free(
		.clk		(clk																		),
		.rst_n		(rst_n																		),
		.shift		(octave																		),
		.notes		({buts[0], buts[1], buts[2], buts[3], buts[4], buts[5], buts[6], buts[7]}	),
		.pwm		(pwm																		),
		.sd			(sd																			)
	);
endmodule