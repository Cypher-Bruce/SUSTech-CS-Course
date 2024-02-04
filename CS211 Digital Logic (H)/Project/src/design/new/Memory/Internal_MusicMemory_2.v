`timescale 1ns / 1ps
`include "MemoryPara.v"
// A prewritten memory unit that stores the music.
// Inherited from MusicMemory.v, but manually removed all functions about writing.
// You may refer to MusicMemory.v for more details.
module Internal_MusicMemory_2(
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

wire    [`DATA_WIDTH-1:0]               memory                  [0:287];    // memory for notes and octave
reg     [`MAX_DEPTH_BIT-1:0]            count;                              // number of notes in memory
reg     [`MAX_DEPTH_BIT-1:0]            read_pointer;                       // position of read pointer
reg     [`MAX_SAMPLE_INTERVAL-1:0]      read_sample_counter;

parameter LOCAL_SAMPLE_INTERVAL = 4166666; // 90 bpm, each beat devide into 16 parts

assign duration = count * LOCAL_SAMPLE_INTERVAL / `SAMPLE_INTERVAL; // correcting the duration based on the given bpm

assign memory[0 ] = 10'b0000000100;
assign memory[1 ] = 10'b0000000100;
assign memory[2 ] = 10'b0000000100;
assign memory[3 ] = 10'b0000000100;

assign memory[4 ] = 10'b0000000100;
assign memory[5 ] = 10'b0000000100;
assign memory[6 ] = 10'b0000000100;
assign memory[7 ] = 10'b0000000100;

assign memory[8 ] = 10'b0000000100;
assign memory[9 ] = 10'b0000000100;
assign memory[10] = 10'b0000000100;
assign memory[11] = 10'b0000000100;

assign memory[12] = 10'b0000000100;
assign memory[13] = 10'b0000000100;
assign memory[14] = 10'b0000000100;
assign memory[15] = 10'b0000000100;

assign memory[16] = 10'b0000000100;
assign memory[17] = 10'b0000000100;
assign memory[18] = 10'b0000000100;
assign memory[19] = 10'b0000000100;

assign memory[20] = 10'b0000000100;
assign memory[21] = 10'b0000000100;
assign memory[22] = 10'b0000000100;
assign memory[23] = 10'b0000000100;

assign memory[24] = 10'b0000000100;
assign memory[25] = 10'b0000000100;
assign memory[26] = 10'b0000000100;
assign memory[27] = 10'b0000000100;

assign memory[28] = 10'b0000000100;
assign memory[29] = 10'b0000000100;
assign memory[30] = 10'b0000000100;
assign memory[31] = 10'b0000000000;

assign memory[32] = 10'b0001000000;
assign memory[33] = 10'b0001000000;
assign memory[34] = 10'b0001000000;
assign memory[35] = 10'b0001000000;

assign memory[36] = 10'b0001000000;
assign memory[37] = 10'b0001000000;
assign memory[38] = 10'b0001000000;
assign memory[39] = 10'b0000000000;

assign memory[40] = 10'b0000010000;
assign memory[41] = 10'b0000010000;
assign memory[42] = 10'b0000010000;
assign memory[43] = 10'b0000010000;

assign memory[44] = 10'b0000010000;
assign memory[45] = 10'b0000010000;
assign memory[46] = 10'b0000010000;
assign memory[47] = 10'b0000000000;

assign memory[48] = 10'b0000010000;
assign memory[49] = 10'b0000010000;
assign memory[50] = 10'b0000010000;
assign memory[51] = 10'b0000010000;

assign memory[52] = 10'b0000010000;
assign memory[53] = 10'b0000010000;
assign memory[54] = 10'b0000010000;
assign memory[55] = 10'b0000000000;

assign memory[56] = 10'b0000001000;
assign memory[57] = 10'b0000001000;
assign memory[58] = 10'b0000001000;
assign memory[59] = 10'b0000001000;

assign memory[60] = 10'b0000001000;
assign memory[61] = 10'b0000001000;
assign memory[62] = 10'b0000001000;
assign memory[63] = 10'b0000000000;

assign memory[64] = 10'b0000000100;
assign memory[65] = 10'b0000000100;
assign memory[66] = 10'b0000000100;
assign memory[67] = 10'b0000000100;

assign memory[68] = 10'b0000000100;
assign memory[69] = 10'b0000000100;
assign memory[70] = 10'b0000000100;
assign memory[71] = 10'b0000000100;

assign memory[72] = 10'b0000000100;
assign memory[73] = 10'b0000000100;
assign memory[74] = 10'b0000000100;
assign memory[75] = 10'b0000000100;

assign memory[76] = 10'b0000000100;
assign memory[77] = 10'b0000000100;
assign memory[78] = 10'b0000000100;
assign memory[79] = 10'b0000000100;

assign memory[80] = 10'b0000000100;
assign memory[81] = 10'b0000000100;
assign memory[82] = 10'b0000000100;
assign memory[83] = 10'b0000000100;

assign memory[84] = 10'b0000000100;
assign memory[85] = 10'b0000000100;
assign memory[86] = 10'b0000000100;
assign memory[87] = 10'b0000000100;

assign memory[88] = 10'b0000000100;
assign memory[89] = 10'b0000000100;
assign memory[90] = 10'b0000000100;
assign memory[91] = 10'b0000000100;

assign memory[92] = 10'b0000000100;
assign memory[93] = 10'b0000000100;
assign memory[94] = 10'b0000000100;
assign memory[95] = 10'b0000000000;

assign memory[96] = 10'b0001000000;
assign memory[97] = 10'b0001000000;
assign memory[98] = 10'b0001000000;
assign memory[99] = 10'b0001000000;

assign memory[100] = 10'b0001000000;
assign memory[101] = 10'b0001000000;
assign memory[102] = 10'b0001000000;
assign memory[103] = 10'b0000000000;

assign memory[104] = 10'b0000010000;
assign memory[105] = 10'b0000010000;
assign memory[106] = 10'b0000010000;
assign memory[107] = 10'b0000010000;

assign memory[108] = 10'b0000010000;
assign memory[109] = 10'b0000010000;
assign memory[110] = 10'b0000010000;
assign memory[111] = 10'b0000000000;

assign memory[112] = 10'b0000010000;
assign memory[113] = 10'b0000010000;
assign memory[114] = 10'b0000010000;
assign memory[115] = 10'b0000010000;

assign memory[116] = 10'b0000010000;
assign memory[117] = 10'b0000010000;
assign memory[118] = 10'b0000010000;
assign memory[119] = 10'b0000000000;

assign memory[120] = 10'b0000001000;
assign memory[121] = 10'b0000001000;
assign memory[122] = 10'b0000001000;
assign memory[123] = 10'b0000000000;

assign memory[124] = 10'b0000001000;
assign memory[125] = 10'b0000001000;
assign memory[126] = 10'b0000001000;
assign memory[127] = 10'b0000000000;

assign memory[128] = 10'b0000010000;
assign memory[129] = 10'b0000010000;
assign memory[130] = 10'b0000010000;
assign memory[131] = 10'b0000010000;

assign memory[132] = 10'b0000010000;
assign memory[133] = 10'b0000010000;
assign memory[134] = 10'b0000010000;
assign memory[135] = 10'b0000010000;

assign memory[136] = 10'b0000010000;
assign memory[137] = 10'b0000010000;
assign memory[138] = 10'b0000010000;
assign memory[139] = 10'b0000010000;

assign memory[140] = 10'b0000010000;
assign memory[141] = 10'b0000010000;
assign memory[142] = 10'b0000010000;
assign memory[143] = 10'b0000010000;

assign memory[144] = 10'b0000010000;
assign memory[145] = 10'b0000010000;
assign memory[146] = 10'b0000010000;
assign memory[147] = 10'b0000010000;

assign memory[148] = 10'b0000010000;
assign memory[149] = 10'b0000010000;
assign memory[150] = 10'b0000010000;
assign memory[151] = 10'b0000010000;

assign memory[152] = 10'b0000010000;
assign memory[153] = 10'b0000010000;
assign memory[154] = 10'b0000010000;
assign memory[155] = 10'b0000010000;

assign memory[156] = 10'b0000010000;
assign memory[157] = 10'b0000010000;
assign memory[158] = 10'b0000010000;
assign memory[159] = 10'b0000000000;

assign memory[160] = 10'b0001000000;
assign memory[161] = 10'b0001000000;
assign memory[162] = 10'b0001000000;
assign memory[163] = 10'b0001000000;

assign memory[164] = 10'b0001000000;
assign memory[165] = 10'b0001000000;
assign memory[166] = 10'b0001000000;
assign memory[167] = 10'b0000000000;

assign memory[168] = 10'b0000010000;
assign memory[169] = 10'b0000010000;
assign memory[170] = 10'b0000010000;
assign memory[171] = 10'b0000010000;

assign memory[172] = 10'b0000010000;
assign memory[173] = 10'b0000010000;
assign memory[174] = 10'b0000010000;
assign memory[175] = 10'b0000000000;

assign memory[176] = 10'b0000010000;
assign memory[177] = 10'b0000010000;
assign memory[178] = 10'b0000010000;
assign memory[179] = 10'b0000010000;

assign memory[180] = 10'b0000010000;
assign memory[181] = 10'b0000010000;
assign memory[182] = 10'b0000010000;
assign memory[183] = 10'b0000000000;

assign memory[184] = 10'b0000001000;
assign memory[185] = 10'b0000001000;
assign memory[186] = 10'b0000001000;
assign memory[187] = 10'b0000001000;

assign memory[188] = 10'b0000001000;
assign memory[189] = 10'b0000001000;
assign memory[190] = 10'b0000001000;
assign memory[191] = 10'b0000000000;

assign memory[192] = 10'b0000000100;
assign memory[193] = 10'b0000000100;
assign memory[194] = 10'b0000000100;
assign memory[195] = 10'b0000000100;

assign memory[196] = 10'b0000000100;
assign memory[197] = 10'b0000000100;
assign memory[198] = 10'b0000000100;
assign memory[199] = 10'b0000000000;

assign memory[200] = 10'b0010000001;
assign memory[201] = 10'b0010000001;
assign memory[202] = 10'b0010000001;
assign memory[203] = 10'b0010000001;

assign memory[204] = 10'b0010000001;
assign memory[205] = 10'b0010000001;
assign memory[206] = 10'b0010000001;
assign memory[207] = 10'b0000000000;

assign memory[208] = 10'b0000000100;
assign memory[209] = 10'b0000000100;
assign memory[210] = 10'b0000000100;
assign memory[211] = 10'b0000000100;

assign memory[212] = 10'b0000000100;
assign memory[213] = 10'b0000000100;
assign memory[214] = 10'b0000000100;
assign memory[215] = 10'b0000000000;

assign memory[216] = 10'b0000001000;
assign memory[217] = 10'b0000001000;
assign memory[218] = 10'b0000001000;
assign memory[219] = 10'b0000001000;

assign memory[220] = 10'b0000001000;
assign memory[221] = 10'b0000001000;
assign memory[222] = 10'b0000001000;
assign memory[223] = 10'b0000000000;

assign memory[224] = 10'b0001000000;
assign memory[225] = 10'b0001000000;
assign memory[226] = 10'b0001000000;
assign memory[227] = 10'b0001000000;

assign memory[228] = 10'b0001000000;
assign memory[229] = 10'b0001000000;
assign memory[230] = 10'b0001000000;
assign memory[231] = 10'b0000000000;

assign memory[232] = 10'b0010000001;
assign memory[233] = 10'b0010000001;
assign memory[234] = 10'b0010000001;
assign memory[235] = 10'b0010000001;

assign memory[236] = 10'b0010000001;
assign memory[237] = 10'b0010000001;
assign memory[238] = 10'b0010000001;
assign memory[239] = 10'b0000000000;

assign memory[240] = 10'b0000000100;
assign memory[241] = 10'b0000000100;
assign memory[242] = 10'b0000000100;
assign memory[243] = 10'b0000000100;

assign memory[244] = 10'b0000000100;
assign memory[245] = 10'b0000000100;
assign memory[246] = 10'b0000000100;
assign memory[247] = 10'b0000000000;

assign memory[248] = 10'b0000001000;
assign memory[249] = 10'b0000001000;
assign memory[250] = 10'b0000001000;
assign memory[251] = 10'b0000001000;

assign memory[252] = 10'b0000001000;
assign memory[253] = 10'b0000001000;
assign memory[254] = 10'b0000001000;
assign memory[255] = 10'b0000000000;

assign memory[256] = 10'b0000000100;
assign memory[257] = 10'b0000000100;
assign memory[258] = 10'b0000000100;
assign memory[259] = 10'b0000000100;

assign memory[260] = 10'b0000000100;
assign memory[261] = 10'b0000000100;
assign memory[262] = 10'b0000000100;
assign memory[263] = 10'b0000000100;

assign memory[264] = 10'b0000000100;
assign memory[265] = 10'b0000000100;
assign memory[266] = 10'b0000000100;
assign memory[267] = 10'b0000000100;

assign memory[268] = 10'b0000000100;
assign memory[269] = 10'b0000000100;
assign memory[270] = 10'b0000000100;
assign memory[271] = 10'b0000000100;

assign memory[272] = 10'b0000000100;
assign memory[273] = 10'b0000000100;
assign memory[274] = 10'b0000000100;
assign memory[275] = 10'b0000000100;

assign memory[276] = 10'b0000000100;
assign memory[277] = 10'b0000000100;
assign memory[278] = 10'b0000000100;
assign memory[279] = 10'b0000000100;

assign memory[280] = 10'b0000000100;
assign memory[281] = 10'b0000000100;
assign memory[282] = 10'b0000000100;
assign memory[283] = 10'b0000000100;

assign memory[284] = 10'b0000000100;
assign memory[285] = 10'b0000000100;
assign memory[286] = 10'b0000000100;
assign memory[287] = 10'b0000000100;

// Initialize internal signals
initial begin
    count = 288;
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