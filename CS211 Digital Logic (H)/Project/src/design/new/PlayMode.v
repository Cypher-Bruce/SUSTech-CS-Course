`define DISPLAY_LENGTH   384
module PlayMode(
    input           clk,
    input           isMode,
    input   [9:0]   vga_bottom_pm,
    output          read_en,
    output          pwm,
    output          sd
);
    // module for play mode
    // inputs:
    // - clk: system clock
    // - isMode: signal to indicate if the current mode is play mode
    // - vga_bottom_pm: the note at the bottom of the screen
    // outputs:
    // - read_en: enable signal (read next value) for memory block
    // - pwm: pwm signal for buzzer
    // - sd: sd signal for buzzer

    // connect wires with memory block
    wire [9:0] data_temp;
    assign data_temp = (isMode) ? vga_bottom_pm : 9'b0;
    assign read_en = isMode;
    
    // instantiation of the buzzer module, since the sound is not
    // controlled by buttons in this mode
    SoundTop SoundTop_inst_play(
            .clk        (clk               ),
            .rst_n      (isMode            ),
            .shift      (data_temp[1:0]    ),
            .notes      (data_temp[9:2]    ),
            .pwm        (pwm               ),
            .sd         (sd                )
    );
endmodule

