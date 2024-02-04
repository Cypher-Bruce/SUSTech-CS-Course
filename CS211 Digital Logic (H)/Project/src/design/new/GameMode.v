module GameMode(
	input			clk,
	input			rst_n,
	input			output_ready,
	input   [9:0]   data_out,
	output			read_en,
	output			pwm,
	output			sd
);
	// module for game mode
	// inputs:
	// - clk: system clock
	// - rst_n: reset signal
	// - output_ready, data_out: collect signal from memory block
	// outputs:
	// - read_en: enable signal (read next value) for memory block
	// - pwm: pwm signal for buzzer
	// - sd: sd signal for buzzer

	// connect wires with memory block
	wire	[9:0]	data_temp;
	assign data_temp = (rst_n) ? data_out : 9'b0;
	assign read_en = rst_n;

	// instantiation of the buzzer module, since the sound is not
	// controlled by buttons in this mode
	SoundTop SoundTop_inst_play(
		.clk        (clk               ),
		.rst_n      (rst_n             ),
		.shift      (data_temp[1:0]    ),
		.notes      (data_temp[9:2]    ),
		.pwm        (pwm               ),
		.sd         (sd                )
	);
endmodule
