`timescale 1ns / 1ps
`include "MemoryPara.v"

// This module is the basis of the music unit.
// It works as a RAM, storing the notes and octaves of the music, 
// but it manages the read and write pointers itself to implement a continuous input and output.
module MusicMemory(
    input   wire                            clk             ,   // system clock        
    input   wire                            rst_n           ,   // system reset
    input   wire                            write_en        ,   // write enable
    input   wire                            read_en         ,   // read enable
    input   wire                            read_rst        ,   // reset read pointer
    input   wire    [`DATA_WIDTH-1:0]       data_in         ,   // input data
    output  reg     [`DATA_WIDTH-1:0]       data_out        ,   // output data
    output  reg                             output_ready    ,   // output is valid when output_ready is high
    output  wire    [`MAX_DEPTH_BIT-1:0]    duration            // duration of the music
);

reg [`DATA_WIDTH-1:0]            memory  [0:`MAX_DEPTH-1]   ;   // memory for notes and octave
reg [`MAX_DEPTH_BIT-1:0]         count                      ;   // number of notes in memory
reg [`MAX_DEPTH_BIT-1:0]         read_pointer               ;   // position of read pointer
reg [`MAX_DEPTH_BIT-1:0]         write_pointer              ;   // position of write pointer
reg [`MAX_SAMPLE_INTERVAL-1:0]   write_sample_counter       ;   // counter for write pointer
reg [`MAX_SAMPLE_INTERVAL-1:0]   read_sample_counter        ;   // counter for read pointer

// duration = number of samples
assign duration = count;

// Initialize internal signals
initial begin
    count = 0;
    read_pointer = 0;
    write_pointer = 0;
    write_sample_counter = 1;
    read_sample_counter = 1;
end

// Storage and output control logic
always @(posedge clk) begin

    // Reset memory contents and counters when rst_n is low (override all other signals)
    if (~rst_n) begin
        count <= 0;
        read_pointer <= 0;
        output_ready <= 0;
        write_pointer <= 0;
        write_sample_counter <= 1;
        read_sample_counter <= 1;
    end else begin
        // input and output logic (can work concurrently)

        // input logic
        if(read_rst) begin
            // reset read pointer when read_rst is high (override read_en)
            read_pointer <= 0;
            output_ready <= 0;
            read_sample_counter <= 1;

        end else begin

            // output data sequentially when read_rst is low and read_en is high
            if (read_en) begin
                if(count > 0 && read_pointer < count) begin
                    output_ready <= 1;
                    data_out <= memory[read_pointer];
                    read_sample_counter <= read_sample_counter + 1;
                    if (read_sample_counter == `SAMPLE_INTERVAL) begin
                        read_sample_counter <= 1;
                        read_pointer <= read_pointer + 1;
                    end
                end else begin
                    output_ready <= 0;
                end
            end    
        end

        // write data into memory if write_en is high
        if (write_en) begin
            // only when there is space in memory can data be written
            if(count < `MAX_DEPTH && write_sample_counter == `SAMPLE_INTERVAL) begin
                memory[write_pointer] <= data_in;
                write_pointer <= write_pointer + 1;
                count <= count + 1;
            end

            // reset write pointer when it reaches the one full interval
            if (write_sample_counter == `SAMPLE_INTERVAL) begin
                write_sample_counter <= 1;
            end else begin
                write_sample_counter <= write_sample_counter + 1;
            end
        end
    end
end

endmodule