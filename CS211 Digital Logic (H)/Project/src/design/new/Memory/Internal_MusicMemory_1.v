`timescale 1ns / 1ps
`include "MemoryPara.v"
// A prewritten memory unit that stores the music.
// Inherited from MusicMemory.v, but manually removed all functions about writing.
// You may refer to MusicMemory.v for more details.
module Internal_MusicMemory_1(
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

wire    [`DATA_WIDTH-1:0]               memory                  [0:191];    // memory for notes and octave
reg     [`MAX_DEPTH_BIT-1:0]            count;                              // number of notes in memory
reg     [`MAX_DEPTH_BIT-1:0]            read_pointer;                       // position of read pointer
reg     [`MAX_SAMPLE_INTERVAL-1:0]      read_sample_counter;

parameter LOCAL_SAMPLE_INTERVAL = 20833333; // 72 bpm, each beat devide into 4 parts

assign duration = count * LOCAL_SAMPLE_INTERVAL / `SAMPLE_INTERVAL; // correcting the duration based on the given bpm

assign memory[0 ] = 10'b0000000100;
assign memory[1 ] = 10'b0000000100;
assign memory[2 ] = 10'b0000000100;
assign memory[3 ] = 10'b0000000000;

assign memory[4 ] = 10'b0000000100;
assign memory[5 ] = 10'b0000000100;
assign memory[6 ] = 10'b0000000100;
assign memory[7 ] = 10'b0000000000;

assign memory[8 ] = 10'b0001000000;
assign memory[9 ] = 10'b0001000000;
assign memory[10] = 10'b0001000000;
assign memory[11] = 10'b0000000000;

assign memory[12] = 10'b0001000000;
assign memory[13] = 10'b0001000000;
assign memory[14] = 10'b0001000000;
assign memory[15] = 10'b0000000000;

assign memory[16] = 10'b0010000000;
assign memory[17] = 10'b0010000000;
assign memory[18] = 10'b0010000000;
assign memory[19] = 10'b0000000000;

assign memory[20] = 10'b0010000000;
assign memory[21] = 10'b0010000000;
assign memory[22] = 10'b0010000000;
assign memory[23] = 10'b0000000000;

assign memory[24] = 10'b0001000000;
assign memory[25] = 10'b0001000000;
assign memory[26] = 10'b0001000000;
assign memory[27] = 10'b0001000000;

assign memory[28] = 10'b0001000000;
assign memory[29] = 10'b0001000000;
assign memory[30] = 10'b0001000000;
assign memory[31] = 10'b0000000000;

assign memory[32] = 10'b0000100000;
assign memory[33] = 10'b0000100000;
assign memory[34] = 10'b0000100000;
assign memory[35] = 10'b0000000000;

assign memory[36] = 10'b0000100000;
assign memory[37] = 10'b0000100000;
assign memory[38] = 10'b0000100000;
assign memory[39] = 10'b0000000000;

assign memory[40] = 10'b0000010000;
assign memory[41] = 10'b0000010000;
assign memory[42] = 10'b0000010000;
assign memory[43] = 10'b0000000000;

assign memory[44] = 10'b0000010000;
assign memory[45] = 10'b0000010000;
assign memory[46] = 10'b0000010000;
assign memory[47] = 10'b0000000000;

assign memory[48] = 10'b0000001000;
assign memory[49] = 10'b0000001000;
assign memory[50] = 10'b0000001000;
assign memory[51] = 10'b0000000000;

assign memory[52] = 10'b0000001000;
assign memory[53] = 10'b0000001000;
assign memory[54] = 10'b0000001000;
assign memory[55] = 10'b0000000000;

assign memory[56] = 10'b0000000100;
assign memory[57] = 10'b0000000100;
assign memory[58] = 10'b0000000100;
assign memory[59] = 10'b0000000100;

assign memory[60] = 10'b0000000100;
assign memory[61] = 10'b0000000100;
assign memory[62] = 10'b0000000100;
assign memory[63] = 10'b0000000000;

assign memory[64] = 10'b0001000000;
assign memory[65] = 10'b0001000000;
assign memory[66] = 10'b0001000000;
assign memory[67] = 10'b0000000000;

assign memory[68] = 10'b0001000000;
assign memory[69] = 10'b0001000000;
assign memory[70] = 10'b0001000000;
assign memory[71] = 10'b0000000000;

assign memory[72] = 10'b0000100000;
assign memory[73] = 10'b0000100000;
assign memory[74] = 10'b0000100000;
assign memory[75] = 10'b0000000000;

assign memory[76] = 10'b0000100000;
assign memory[77] = 10'b0000100000;
assign memory[78] = 10'b0000100000;
assign memory[79] = 10'b0000000000;

assign memory[80] = 10'b0000010000;
assign memory[81] = 10'b0000010000;
assign memory[82] = 10'b0000010000;
assign memory[83] = 10'b0000000000;

assign memory[84] = 10'b0000010000;
assign memory[85] = 10'b0000010000;
assign memory[86] = 10'b0000010000;
assign memory[87] = 10'b0000000000;

assign memory[88] = 10'b0000001000;
assign memory[89] = 10'b0000001000;
assign memory[90] = 10'b0000001000;
assign memory[91] = 10'b0000001000;

assign memory[92] = 10'b0000001000;
assign memory[93] = 10'b0000001000;
assign memory[94] = 10'b0000001000;
assign memory[95] = 10'b0000000000;

assign memory[96] = 10'b0001000000;
assign memory[97] = 10'b0001000000;
assign memory[98] = 10'b0001000000;
assign memory[99] = 10'b0000000000;

assign memory[100] = 10'b0001000000;
assign memory[101] = 10'b0001000000;
assign memory[102] = 10'b0001000000;
assign memory[103] = 10'b0000000000;

assign memory[104] = 10'b0000100000;
assign memory[105] = 10'b0000100000;
assign memory[106] = 10'b0000100000;
assign memory[107] = 10'b0000000000;

assign memory[108] = 10'b0000100000;
assign memory[109] = 10'b0000100000;
assign memory[110] = 10'b0000100000;
assign memory[111] = 10'b0000000000;

assign memory[112] = 10'b0000010000;
assign memory[113] = 10'b0000010000;
assign memory[114] = 10'b0000010000;
assign memory[115] = 10'b0000000000;

assign memory[116] = 10'b0000010000;
assign memory[117] = 10'b0000010000;
assign memory[118] = 10'b0000010000;
assign memory[119] = 10'b0000000000;

assign memory[120] = 10'b0000001000;
assign memory[121] = 10'b0000001000;
assign memory[122] = 10'b0000001000;
assign memory[123] = 10'b0000001000;

assign memory[124] = 10'b0000001000;
assign memory[125] = 10'b0000001000;
assign memory[126] = 10'b0000001000;
assign memory[127] = 10'b0000000000;

assign memory[128] = 10'b0000000100;
assign memory[129] = 10'b0000000100;
assign memory[130] = 10'b0000000100;
assign memory[131] = 10'b0000000000;

assign memory[132] = 10'b0000000100;
assign memory[133] = 10'b0000000100;
assign memory[134] = 10'b0000000100;
assign memory[135] = 10'b0000000000;

assign memory[136] = 10'b0001000000;
assign memory[137] = 10'b0001000000;
assign memory[138] = 10'b0001000000;
assign memory[139] = 10'b0000000000;

assign memory[140] = 10'b0001000000;
assign memory[141] = 10'b0001000000;
assign memory[142] = 10'b0001000000;
assign memory[143] = 10'b0000000000;

assign memory[144] = 10'b0010000000;
assign memory[145] = 10'b0010000000;
assign memory[146] = 10'b0010000000;
assign memory[147] = 10'b0000000000;

assign memory[148] = 10'b0010000000;
assign memory[149] = 10'b0010000000;
assign memory[150] = 10'b0010000000;
assign memory[151] = 10'b0000000000;

assign memory[152] = 10'b0001000000;
assign memory[153] = 10'b0001000000;
assign memory[154] = 10'b0001000000;
assign memory[155] = 10'b0001000000;

assign memory[156] = 10'b0001000000;
assign memory[157] = 10'b0001000000;
assign memory[158] = 10'b0001000000;
assign memory[159] = 10'b0000000000;

assign memory[160] = 10'b0000100000;
assign memory[161] = 10'b0000100000;
assign memory[162] = 10'b0000100000;
assign memory[163] = 10'b0000000000;

assign memory[164] = 10'b0000100000;
assign memory[165] = 10'b0000100000;
assign memory[166] = 10'b0000100000;
assign memory[167] = 10'b0000000000;

assign memory[168] = 10'b0000010000;
assign memory[169] = 10'b0000010000;
assign memory[170] = 10'b0000010000;
assign memory[171] = 10'b0000000000;

assign memory[172] = 10'b0000010000;
assign memory[173] = 10'b0000010000;
assign memory[174] = 10'b0000010000;
assign memory[175] = 10'b0000000000;

assign memory[176] = 10'b0000001000;
assign memory[177] = 10'b0000001000;
assign memory[178] = 10'b0000001000;
assign memory[179] = 10'b0000000000;

assign memory[180] = 10'b0000001000;
assign memory[181] = 10'b0000001000;
assign memory[182] = 10'b0000001000;
assign memory[183] = 10'b0000000000;

assign memory[184] = 10'b0000000100;
assign memory[185] = 10'b0000000100;
assign memory[186] = 10'b0000000100;
assign memory[187] = 10'b0000000100;

assign memory[188] = 10'b0000000100;
assign memory[189] = 10'b0000000100;
assign memory[190] = 10'b0000000100;
assign memory[191] = 10'b0000000000;

initial begin
    count = 192;
    read_pointer = 0;
    read_sample_counter = 1;
end

always @(posedge clk) begin
    if (~rst_n || read_rst) begin
        read_pointer <= 0;
        output_ready <= 0;
        read_sample_counter <= 1;
    end else begin
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