`define HalfClockPeriod 1000000

// Choose mode FSM states
`define WelcomePage		8'b1000_0000
`define ChooseModePage	8'b0100_0000
`define FreeMode		8'b0010_0000
`define PlayMode		8'b0001_0000
`define LearnMode		8'b0000_1000
`define GameMode		8'b0000_0100
`define SettingMode		8'b0000_0010
`define ChooseSongPage 	8'b0000_0001
`define Song_PlayMode	8'b0001_0001
`define Song_LearnMode	8'b0000_1001
`define Song_GameMode	8'b0000_0101
`define UserRanking		8'b0000_0000

`define SAMPLE_INTERVAL     625

`define BUFFER_LENGTH    20
`define DISPLAY_LENGTH   384
`define TOT_LENGTH       404

`define  STRING_LENGTH 16