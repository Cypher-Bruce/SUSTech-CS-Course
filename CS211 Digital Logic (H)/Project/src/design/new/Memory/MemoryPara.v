`define DATA_WIDTH          10              // 10 bits for note and octave
`define MAX_DEPTH           1024            // 1024 samples
`define MAX_DEPTH_BIT       10              // 10 bits for max depth(1024)
`define SAMPLE_INTERVAL     6250000         // sample rate 16Hz (6250000 = 100MHz / 16Hz)
`define MAX_SAMPLE_INTERVAL 32              // 32 bits for max sample interval
`define AUTOPLAY            8'b0001_0000    // mode code
`define LEARNING            8'b0000_1000
`define GAME                8'b0000_0100
`define FREE                8'b0010_0000
`define STATE_WIDTH         8               // 8 bits for state code
`define MAX_MEMORY          8               // 8 available memory units
`define MAX_MEMORY_BIT      3               // 3 bits for max memory(8)
`define PRE_WRITTEN_COUNT   5               // 5 pre-written units