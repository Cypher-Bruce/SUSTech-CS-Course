`timescale 1ns / 1ps
`include "MemoryPara.v"
// This module is the control unit of a single memory unit.
// The main function of this module is to reset the read pointer automatically.
// By doing so, we don't need to reset the read pointer manually with user input.
// Also, to achieve 0 latency, it is implemented as a combinational circuit.
module MemoryUnit(
    input   wire                            clk             ,   // system clock
    input   wire                            rst_n           ,   // system reset
    input   wire                            write_en        ,   // write enable
    input   wire                            read_en         ,   // read enable
    input   wire                            read_rst        ,   // reset read pointer
    input   wire    [`STATE_WIDTH-1:0]      current_state   ,   // state code
    input   wire    [`DATA_WIDTH-1:0]       data_in         ,   // input data
    output  reg     [`DATA_WIDTH-1:0]       data_out        ,   // output data
    output  reg                             output_ready    ,   // output is valid when output_ready is high
    output  wire    [`MAX_DEPTH_BIT-1:0]    duration            // duration of the music
);
// connect to the music memory module
wire [`DATA_WIDTH-1:0]      music_data_out      ; 
wire                        music_output_ready  ;
wire                        read_rst_in         ;

MusicMemory Music(clk, rst_n, write_en, read_en, read_rst_in, data_in, music_data_out, music_output_ready, duration);

// reset read pointer when the state is not in AUTOPLAY, LEARNING, GAME or FREE
assign read_rst_in = ((current_state == `AUTOPLAY || current_state == `LEARNING || current_state == `GAME || current_state == `FREE) ? 0 : 1) | read_rst;

// only when the state is in AUTOPLAY, LEARNING or GAME, we can read the music data
// otherwise, the output is always 0 (to avoid noise)
always @(*)
begin
    case(current_state)
        `AUTOPLAY, `GAME, `LEARNING: 
        begin
            data_out = music_data_out; 
            output_ready = music_output_ready;
        end
        default:
        begin
            data_out = 0;
            output_ready = 0;
        end
    endcase
end
endmodule
