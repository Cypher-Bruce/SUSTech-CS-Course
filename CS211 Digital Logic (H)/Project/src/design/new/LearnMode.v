module LearnMode(
    input           clk,
	input           rst_n,
	input	[7:0]	buts,
	input 	[1:0]   octave,
	input   [9:0]   data_out,
	output          read_en
);
    // module for learn mode
    // inputs:
    // - clk: system clock
    // - rst_n: reset signal
    // - buts: 8 buttons for input notes
    // - octave: 2-bit signal for octave shift
    // - data_out: collect signal from memory block
    // outputs:
    // - read_en: enable signal (read next value) for memory block
    //      when the user presses the correct button
    //      read_en will be set to 1 and the next note will be loaded
    reg count;
    always @(posedge clk) begin
        if(~rst_n)begin
            count <= 1;
        end
        else begin
            // use gate delay to postpone the change of count by 1 cycle
            if(count) begin
                count <= 0;
            end
        end
    end

    // if the user presses the correct button, read_en will be set to 1
    assign read_en = count ? 1 : ((rst_n & ({buts[0], buts[1], buts[2], buts[3], buts[4], buts[5], buts[6], buts[7], octave} == data_out)) ? 1 : 0);
endmodule
