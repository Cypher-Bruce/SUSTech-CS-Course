`define HalfClockPeriod     1000000

// Choose mode FSM states
`define WelcomePage		    8'b1000_0000
`define ChooseModePage	    8'b0100_0000
`define FreeMode		    8'b0010_0000
`define PlayMode		    8'b0001_0000
`define LearnMode		    8'b0000_1000
`define GameMode		    8'b0000_0100
`define SettingMode		    8'b0000_0010
`define ChooseSongPage 	    8'b0000_0001
`define Song_PlayMode	    8'b0001_0001
`define Song_LearnMode	    8'b0000_1001
`define Song_GameMode	    8'b0000_0101
`define UserRanking		    8'b0000_0000


`define maxUsernameLength   8
`define maxUserNum          8
`define maxSongnameLength   20
`define maxSongNum          8

`define octaveUpCode        2'b10
`define octaveResetCode     2'b00
`define octaveDownCode      2'b01