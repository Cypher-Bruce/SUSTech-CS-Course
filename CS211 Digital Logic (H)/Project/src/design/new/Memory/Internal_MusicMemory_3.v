`timescale 1ns / 1ps
`include "MemoryPara.v"
// A prewritten memory unit that stores the music.
// Inherited from MusicMemory.v, but manually removed all functions about writing.
// You may refer to MusicMemory.v for more details.
module Internal_MusicMemory_3(
    input   wire                        clk             ,
    input   wire                        rst_n           ,
    input   wire                        write_en        ,
    input   wire                        read_en         ,
    input   wire                        read_rst        ,
    input   wire [`DATA_WIDTH-1:0]      data_in         ,
    output  reg  [`DATA_WIDTH-1:0]      data_out        ,
    output  reg                         output_ready    ,
    output  wire [`MAX_DEPTH_BIT-1:0]   duration
);

wire    [`DATA_WIDTH-1:0]               memory                  [0:63];    // memory for notes and octave
reg     [`MAX_DEPTH_BIT-1:0]            count;                              // number of notes in memory
reg     [`MAX_DEPTH_BIT-1:0]            read_pointer;                       // position of read pointer
reg     [`MAX_SAMPLE_INTERVAL-1:0]      read_sample_counter;

parameter LOCAL_SAMPLE_INTERVAL = 21739130; // 69 bpm, each beat devide into 4 parts

assign duration = count * LOCAL_SAMPLE_INTERVAL / `SAMPLE_INTERVAL; // correcting the duration based on the given bpm

assign memory[0 ] = 10'b0001000010;
assign memory[1 ] = 10'b0001000010;
assign memory[2 ] = 10'b0000010010;
assign memory[3 ] = 10'b0000100010;
assign memory[4 ] = 10'b0001000010;
assign memory[5 ] = 10'b0001000010;
assign memory[6 ] = 10'b0000010010;
assign memory[7 ] = 10'b0000100010;
assign memory[8 ] = 10'b0001000010;
assign memory[9 ] = 10'b0001000000;
assign memory[10] = 10'b0010000000;
assign memory[11] = 10'b0100000000;
assign memory[12] = 10'b0000000110;
assign memory[13] = 10'b0000001010;
assign memory[14] = 10'b0000010010;
assign memory[15] = 10'b0000100010;
assign memory[16] = 10'b0000010010;
assign memory[17] = 10'b0000010010;
assign memory[18] = 10'b0000000110;
assign memory[19] = 10'b0000001010;
assign memory[20] = 10'b0000010010;
assign memory[21] = 10'b0000010010;
assign memory[22] = 10'b0000010000;
assign memory[23] = 10'b0000100000;
assign memory[24] = 10'b0001000000;
assign memory[25] = 10'b0010000000;
assign memory[26] = 10'b0001000000;
assign memory[27] = 10'b0000100000;
assign memory[28] = 10'b0001000000;
assign memory[29] = 10'b0000010000;
assign memory[30] = 10'b0000100000;
assign memory[31] = 10'b0001000000;
assign memory[32] = 10'b0000100000;
assign memory[33] = 10'b0000100000;
assign memory[34] = 10'b0010000000;
assign memory[35] = 10'b0001000000;
assign memory[36] = 10'b0000100000;
assign memory[37] = 10'b0000100000;
assign memory[38] = 10'b0000010000;
assign memory[39] = 10'b0000001000;
assign memory[40] = 10'b0000010000;
assign memory[41] = 10'b0000001000;
assign memory[42] = 10'b0000000100;
assign memory[43] = 10'b0000001000;
assign memory[44] = 10'b0000010000;
assign memory[45] = 10'b0000100000;
assign memory[46] = 10'b0001000000;
assign memory[47] = 10'b0010000000;
assign memory[48] = 10'b0000100000;
assign memory[49] = 10'b0000100000;
assign memory[50] = 10'b0010000000;
assign memory[51] = 10'b0001000000;
assign memory[52] = 10'b0000100000;
assign memory[53] = 10'b0000100000;
assign memory[54] = 10'b0100000000;
assign memory[55] = 10'b0000000110;
assign memory[56] = 10'b0001000000;
assign memory[57] = 10'b0010000000;
assign memory[58] = 10'b0100000000;
assign memory[59] = 10'b0000000110;
assign memory[60] = 10'b0000001010;
assign memory[61] = 10'b0000010010;
assign memory[62] = 10'b0000100010;
assign memory[63] = 10'b0001000010;

// Initialize internal signals
initial begin
    count = 64;
    read_pointer = 0;
    read_sample_counter = 1;
end

// Storage and output control logic
always @(posedge clk) begin
    if (~rst_n || read_rst) begin
        read_pointer <= 0;
        output_ready <= 0;
        read_sample_counter <= 1;
    end else begin
        // Output data sequentially when output_enable is asserted
        if (read_en) begin
            if(count > 0 && read_pointer < count) begin
                output_ready <= 1;
                data_out <= memory[read_pointer];
                read_sample_counter <= read_sample_counter + 1;
                if (read_sample_counter == LOCAL_SAMPLE_INTERVAL) begin
                    read_sample_counter <= 1;
                    read_pointer <= read_pointer + 1;
                end
            end else begin
                output_ready <= 0;
            end
        end    
    end
end

endmodule