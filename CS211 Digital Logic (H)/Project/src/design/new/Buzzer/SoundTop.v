module SoundTop(
    input                   clk,
    input                   rst_n,
    input       [1:0]       shift,
    input       [7:0]       notes,
    output                  pwm,
    output                  sd
);
    assign sd = 1'b1;
    
    wire                    flag_switch;//Indicate the notes have changed the state.
    wire                    flag_state;//Indicate the notes have been inputing notes.
    reg         [7:0]       prev_notes;
    always @(posedge clk) begin
        prev_notes <= notes;
    end
    assign flag_switch = (notes != prev_notes)? 1'b1 : 1'b0;
    assign flag_state = (notes != 8'b0)?1'b1 : 1'b0;
    
    wire        [2:0]       num;//Count the number of notes.
    assign num = notes[6] + notes[5] + notes[4] + notes[3] + notes[2] + notes[1] + notes [0];
    
    reg         [2:0]       cnt;
    reg         [2:0]       index;
    reg         [2:0]       buffer[7:0];
    
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n) begin
            index <= 3'b0;
            cnt <= 3'b0;
            buffer[0] <= 3'b0;
            buffer[1] <= 3'b0;
            buffer[2] <= 3'b0;
            buffer[3] <= 3'b0;
            buffer[4] <= 3'b0;
            buffer[5] <= 3'b0;
            buffer[6] <= 3'b0;
            buffer[7] <= 3'b0;
        end
        else if(flag_state == 1'b0 || flag_switch == 1'b1) begin//Reset the Buffer
            index <= 3'b0;
            cnt <= 3'b0;
            buffer[0] <= 3'b0;
            buffer[1] <= 3'b0;
            buffer[2] <= 3'b0;
            buffer[3] <= 3'b0;
            buffer[4] <= 3'b0;
            buffer[5] <= 3'b0;
            buffer[6] <= 3'b0;
            buffer[7] <= 3'b0;
        end
        else begin
            //Have reached the numbers of notes, stop with loops.
            if(index == num) begin
                index <= num;
                cnt <= cnt;
            end
            //Try to traverse the notes to load the notes into the buffer.
            else if(notes[cnt] == 1'b1) begin
                buffer[index] <= cnt + 1;
                cnt <= cnt + 1;
                index <= index + 1;
            end
            else begin
                cnt <= cnt + 1;
            end
        end
    end
    
    wire        [2:0]       division;   
    SoundClkDivider SoundClkDivider_inst(
        .clk        (clk),
        .rst_n      (rst_n),
        .note_number(num),
        .en         (flag_state),
        .division   (division)
    );
    
    wire        [2:0]       note;//The note that the tone_generator generates.  
    SoundToneGenerator SoundToneGenerator_inst(
        .clk        (clk),
        .rst_n      (rst_n && notes != 3'b000),
	    .shift      (shift),
        .note       (note), 
        .en         (flag_state),
        .pwm        (pwm)
    );
    
    //Read the notes from the buffer
    assign note = buffer[division] - 1;
endmodule