`include "TopParams.v"
module Top (
	input 				sys_clk, 
	input 				rst_n,
	input 				but_center, 
	input				but_up, 
	input				but_down, 
	input				but_left, 
	input				but_right,
	input				but_esc,
	input		[7:0]	buts,
	input 		[7:0]	switch,				
	output	reg	[7:0]   LED,
	output		[7:0]	Debug_LED,
	output		[7:0]	tub_sel,
    output  	[7:0]	tub_data1,
    output  	[7:0]	tub_data2,
	
	//Output for Sound
	output	    reg			        pwm,
	output	    reg			        sd,
	
	//Output for VGA
	output      wire                hsync       ,   //Horizontal Sync Signal
    output      wire                vsync       ,   //Vertical Sync Signal
    output      wire    [3:0]       color_red   ,   //RGB Red data
    output      wire    [3:0]       color_green ,   //RGB Green data
    output      wire    [3:0]       color_blue      //RGB Blue data
);
	// Top module for the whole project
	// inputs:
	// - sys_clk: system clock
	// - rst_n: reset signal
	// - but_*, buts: button signals
	// - switch: switch signals
	// outputs:
	// - LED: large LED signals
	// - Debug_LED: small LED signals
	// - tub_sel: selection signal for the 7-segment tubes
	// - tub_data1: data to be displayed on the left 4 tubes
	// - tub_data2: data to be displayed on the right 4 tubes
	// - pwm: PWM signal for sound
	// - sd: SD signal for sound
	// - hsync: Horizontal Sync Signal for VGA
	// - vsync: Vertical Sync Signal for VGA
	// - color_red: RGB Red data for VGA
	// - color_green: RGB Green data for VGA
	// - color_blue: RGB Blue data for VGA

	reg		[7:0]		 mode	  = `WelcomePage;
    reg     [7:0]        next_mode;
    //------------------Clk Divider------------------//
	wire slow_clk;
	ClkDivider ClkDivider_inst(
		.sys_clk	(sys_clk	),
		.rst_n		(rst_n		),
		.slow_clk	(slow_clk	)
	);

	//------------------Set keys------------------//
    wire pres_center, pres_up, pres_down, pres_left, pres_right, pres_esc;
    wire pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc;
    wire nege_center, nege_up, nege_down, nege_left, nege_right, nege_esc;
    wire [7:0] pres_buts, pose_buts, nege_buts;
    wire [2:0] perm_conf [7:0];
	wire [2:0] setting_cnt;
	reg setting_rst_n = 1'b1;
	Setting Setting_inst(
		.slow_clk		(slow_clk								),
		.rst_n			(rst_n & setting_rst_n					),
		.pose_buts		(mode == `SettingMode ? pose_buts : 0	),
		.pose_esc		(mode == `SettingMode ? pose_esc : 0	),
		.perm0			(perm_conf[0]							),
		.perm1			(perm_conf[1]							),
		.perm2			(perm_conf[2]							),
		.perm3			(perm_conf[3]							),
		.perm4			(perm_conf[4]							),
		.perm5			(perm_conf[5]							),
		.perm6			(perm_conf[6]							),
		.perm7			(perm_conf[7]							),
		.setting_cnt	(setting_cnt							)
	);

	//------------------Key Debouncer-----------------//
	KeysDebouncer14 KeysDebouncer14_inst(
		.slow_clk		(slow_clk																		      ),
		.rst_n			(rst_n																			      ),
		.but_in			({but_center,  but_up,  but_down,  but_left,  but_right,  ~but_esc,
		                  ~buts[perm_conf[7]], ~buts[perm_conf[6]], ~buts[perm_conf[5]], ~buts[perm_conf[4]],
		                  ~buts[perm_conf[3]], ~buts[perm_conf[2]], ~buts[perm_conf[1]], ~buts[perm_conf[0]]} ),
		.but_active		({pres_center, pres_up, pres_down, pres_left, pres_right, pres_esc, pres_buts}	      ),
		.but_posedge	({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc, pose_buts}	      ),
		.but_negedge	({nege_center, nege_up, nege_down, nege_left, nege_right, nege_esc, nege_buts}	      )
	);
	
	wire recording, pres_rec, pose_rec, nege_rec;
	assign recording = switch[0];
	KeyDebouncer recordDebouncer(
	   .slow_clk	   (slow_clk	),
       .rst_n          (rst_n       ),
       .but_in         (recording	),
       .but_active     (pres_rec    ),
	   .but_posedge    (pose_rec    ),
	   .but_negedge    (nege_rec    )
	);

	wire delete, pres_del, pose_del, nege_del;
	assign delete = switch[3];
	KeyDebouncer deleteDebouncer(
	   .slow_clk	   (slow_clk	),
	   .rst_n          (rst_n       ),
	   .but_in         (delete		),
	   .but_active     (pres_del    ),
	   .but_posedge    (pose_del    ),
	   .but_negedge    (nege_del    )
	);
	
	//------------------user login------------------//
	reg [(`maxUsernameLength * 8 - 1) : 0] username [(`maxUserNum - 1):0];
	reg [(`maxUsernameLength * 8 - 1) : 0] newUsername;
	reg rstNewUsername;
	reg [7:0] curInput;
	reg [2:0] userNum;
	reg [4:0] usernameInputPnt;
	initial begin
		username[0] = "admin";
		username[1] = "xiaoyc";
		username[2] = "wumx";
		username[3] = "zhousl";
		userNum = 4;
		usernameInputPnt = 0;
		rstNewUsername = 0;
	end

	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n) begin
			username[0] <= "admin";			
			username[1] <= "xiaoyc";
			username[2] <= "wumx";			
			username[3] <= "zhousl";
			userNum <= 4;
			usernameInputPnt <= 0;
			newUsername <= 0;
			curInput <= 0;
			rstNewUsername <= 0;
		end
        else if (mode == `WelcomePage && rstNewUsername) begin
            newUsername <= 0;
            rstNewUsername <= 0;
        end
		else if (mode == `WelcomePage && username[userNum] != 0) begin
			userNum <= userNum + 1;
			usernameInputPnt <= 0;
			curInput <= 0;
			rstNewUsername <= 1;
		end
		else if (mode == `WelcomePage) begin
			case (pose_buts)
				8'h80: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 6));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 6);
				end
				8'h40: begin
                    newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 5));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 5);
				end
				8'h20: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 4));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 4);
				end
				8'h10: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 3));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 3);
				end
				8'h08: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 2));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 2);
				end
				8'h04: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 1));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 1);
				end
				8'h02: begin
					newUsername <= newUsername ^ (1 << ((`maxUsernameLength - usernameInputPnt - 1) * 8 + 0));
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput ^ (1 << 0);
				end
				8'h01: begin
					newUsername <= newUsername;
					usernameInputPnt <= usernameInputPnt + 1;
					curInput <= 0;
				end
				default: begin
					newUsername <= newUsername;
					usernameInputPnt <= usernameInputPnt;
					curInput <= curInput;
				end
		    endcase
		end
		else begin
            username[0] <= username[0];
            username[1] <= username[1];
            username[2] <= username[2];
            username[3] <= username[3];
            username[4] <= username[4];
            username[5] <= username[5];
            username[6] <= username[6];
            username[7] <= username[7];
			newUsername <= 0;
			userNum <= userNum;
			usernameInputPnt <= 0;
		end
	end
	
	assign Debug_LED = curInput;

	//------------------song names------------------//
	reg [(`maxSongnameLength * 8 - 1) : 0] songname [(`maxSongNum - 1):0];
	initial begin
		songname[0] = "Little Star";
		songname[1] = "Your new home";
		songname[2] = "Canon";
		songname[3] = "Jingle Bell";
		songname[4] = "Happy New Year";
		songname[5] = "Custom 1";
		songname[6] = "Custom 2";
		songname[7] = "Custom 3";
	end

	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n) begin
	    	songname[0] <= "Little Star";
            songname[1] <= "Your new home";
            songname[2] <= "Canon";
            songname[3] <= "Jingle Bell";
            songname[4] <= "Happy New Year";
            songname[5] <= "Custom 1";
	    	songname[6] <= "Custom 2";
	    	songname[7] <= "Custom 3";
		end
		else begin
			songname[0] <= songname[0];
			songname[1] <= songname[1];
			songname[2] <= songname[2];
			songname[3] <= songname[3];
			songname[4] <= songname[4];
			songname[5] <= songname[5];
			songname[6] <= songname[6];
			songname[7] <= songname[7];
		end
	end

	//------------------song owners------------------//
	wire	[2:0]	song_id;
	reg [(`maxUsernameLength * 8 - 1) : 0] song_owner [(`maxSongNum - 1):0];
	initial begin
		song_owner[0] = "admin";
		song_owner[1] = "admin";
		song_owner[2] = "admin";
		song_owner[3] = "admin";
		song_owner[4] = "admin";
		song_owner[5] = "admin";
		song_owner[6] = "admin";
		song_owner[7] = "admin";
	end

	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n) begin
			song_owner[0] <= "admin";
			song_owner[1] <= "admin";
			song_owner[2] <= "admin";
			song_owner[3] <= "admin";
			song_owner[4] <= "admin";
			song_owner[5] <= "admin";
			song_owner[6] <= "admin";
			song_owner[7] <= "admin";
		end
		else if (mode == `PlayMode && (pose_left || pose_right)) begin
		    song_owner[song_id] <= username[userNum];
		end
		else begin
			song_owner[0] <= song_owner[0];
			song_owner[1] <= song_owner[1];
			song_owner[2] <= song_owner[2];
			song_owner[3] <= song_owner[3];
			song_owner[4] <= song_owner[4];
			song_owner[5] <= song_owner[5];
			song_owner[6] <= song_owner[6];
			song_owner[7] <= song_owner[7];
		end
	end

    //------------------Song Visibility-----------------//
	wire  [7:0]               unit_status;
	wire [(`maxSongNum - 1):0] song_visibility;
	assign song_visibility[0] = (song_owner[0] == "admin" || song_owner[0] == username[userNum]) && unit_status[0];
	assign song_visibility[1] = (song_owner[1] == "admin" || song_owner[1] == username[userNum]) && unit_status[1];
	assign song_visibility[2] = (song_owner[2] == "admin" || song_owner[2] == username[userNum]) && unit_status[2];
	assign song_visibility[3] = (song_owner[3] == "admin" || song_owner[3] == username[userNum]) && unit_status[3];
	assign song_visibility[4] = (song_owner[4] == "admin" || song_owner[4] == username[userNum]) && unit_status[4];
	assign song_visibility[5] = (song_owner[5] == "admin" || song_owner[5] == username[userNum]) && unit_status[5];
	assign song_visibility[6] = (song_owner[6] == "admin" || song_owner[6] == username[userNum]) && unit_status[6];
	assign song_visibility[7] = (song_owner[7] == "admin" || song_owner[7] == username[userNum]) && unit_status[7];
    
    //------------------Song Repertoire------------------//
    // parameter             song_per_page     = 4;
    reg                   repertoire_page = 0;
    reg     [1:0]         page_song_id    = 0;
    wire    [2:0]         next_addr;
    //There is a problem here
    always @(posedge slow_clk or negedge rst_n) begin
        if(~rst_n) begin
            repertoire_page <= 1'b0;
            page_song_id     <= 2'b00;
        end
        else if(mode == `Song_PlayMode || mode == `Song_LearnMode || mode == `Song_GameMode) begin
            if(pose_up) begin
                page_song_id <= (page_song_id == 2'b00) ? 2'b11 : page_song_id - 1;
                repertoire_page <= repertoire_page;
            end
            else if(pose_down) begin
                page_song_id <= (page_song_id == 2'b11) ? 2'b00 : page_song_id + 1;
                repertoire_page <= repertoire_page;
            end
            else if(pose_left || pose_right) begin
                page_song_id <= page_song_id;
                repertoire_page <= ~repertoire_page;
            end
            else begin
                page_song_id <= page_song_id;
                repertoire_page <= repertoire_page;
            end
        end
        else if ((mode == `FreeMode || mode == `PlayMode || mode == `LearnMode || mode == `GameMode) && nege_rec) begin
            page_song_id <= next_addr[1:0];
            repertoire_page <= next_addr[2];
        end
        else begin
            page_song_id <= page_song_id;
            repertoire_page <= repertoire_page;
        end
    end

    wire	[1:0]	octave;

    assign  song_id = {repertoire_page, page_song_id};
    
	//------------------Finite State Machine-----------------//
	`include "TopParams.v"
	reg handling_rec;
	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n) begin
			mode <= `WelcomePage;
			handling_rec <= 1'b0;
		end
		else begin
			if (mode == `WelcomePage  ) begin
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
				    6'b100000: begin
						mode <= `ChooseModePage;
						next_mode <= `FreeMode;
					end
					default:  mode <= `WelcomePage;
				endcase
			end
			else if(mode == `ChooseModePage	)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
					6'b100000: begin
						mode <= next_mode;
					end
					6'b010000: begin
						case (next_mode)
							`FreeMode:          next_mode	<= `SettingMode;
							`Song_PlayMode:		next_mode	<= `UserRanking;
							`Song_LearnMode:	next_mode	<= `FreeMode;
							`Song_GameMode:		next_mode	<= `Song_PlayMode;
							`SettingMode:		next_mode	<= `Song_LearnMode;
							`UserRanking:		next_mode	<= `Song_GameMode;
							default: 			next_mode	<= next_mode;
						endcase
					end
					6'b001000: begin
						case (next_mode)
							`FreeMode:			next_mode	<= `Song_LearnMode;
							`Song_PlayMode:		next_mode	<= `Song_GameMode;
							`Song_LearnMode:    next_mode	<= `SettingMode;
							`Song_GameMode:		next_mode	<= `UserRanking;
							`SettingMode:		next_mode	<= `FreeMode;
							`UserRanking:		next_mode	<= `Song_PlayMode;
							default: 			next_mode	<= next_mode;
						endcase
					end
					6'b000100, 6'b000010: begin
						case (next_mode)
							`FreeMode:			next_mode	<= `Song_PlayMode;
							`Song_PlayMode:		next_mode	<= `FreeMode;
							`Song_LearnMode:	next_mode	<= `Song_GameMode;
							`Song_GameMode:		next_mode	<= `Song_LearnMode;
							`SettingMode:		next_mode	<= `UserRanking;
							`UserRanking:       next_mode	<= `SettingMode;
							default: 			next_mode	<= next_mode;
						endcase
					end
					6'b000001: begin
						mode <= `WelcomePage;
					end
					default: begin
						mode <= mode;
						next_mode <= next_mode;
					end
				endcase
			else if(mode == `FreeMode		)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc, nege_rec})
					7'b0000010:	mode <= `ChooseModePage;
					7'b0000001:	begin
						mode <= `PlayMode;
						handling_rec <= 1'b1;
					end
					default:	mode <= `FreeMode;
				endcase
			else if(mode == `PlayMode		)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc, nege_rec})
					7'b0000010:	mode <= `Song_PlayMode;
					7'b0000001:	begin
						mode <= `PlayMode;
						handling_rec <= 1'b1;
					end
					7'b0001000, 7'b0000100: begin
						mode <= `ChooseModePage;
						handling_rec <= 1'b0;
					end
					default:	mode <= `PlayMode;
				endcase
			else if(mode == `LearnMode		)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc, nege_rec})
					7'b0000010:	mode <= `Song_LearnMode;
					7'b0000001:	begin
						mode <= `PlayMode;
						handling_rec <= 1'b1;
					end
					default:	mode <= `LearnMode	;
				endcase
			else if(mode == `GameMode		)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc, nege_rec})
					7'b0000010:	mode <= `Song_GameMode;
					7'b0000001:	begin
						mode <= `PlayMode;
						handling_rec <= 1'b1;
					end
					default:	mode <= `GameMode;
				endcase
			else if(mode == `SettingMode		) begin
				if (setting_cnt == 3'b111 || pose_esc) begin
					mode <= `ChooseModePage;
				end
				else begin
					mode <= `SettingMode;
				end
			end
			else if(mode == `Song_PlayMode 	)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
					6'b100000:	mode <= song_visibility[song_id] ? `PlayMode : `Song_PlayMode;
					6'b000001:	mode <= `ChooseModePage;
					default:	mode <= `Song_PlayMode;
				endcase
			else if(mode == `Song_LearnMode	)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
					6'b100000:	mode <= song_visibility[song_id] ? `LearnMode : `Song_LearnMode;
					6'b000001:	mode <= `ChooseModePage;
					default:	mode <= `Song_LearnMode;
				endcase
			else if(mode == `Song_GameMode	)
				case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
					6'b100000:	mode <= song_visibility[song_id] ? `GameMode : `Song_GameMode;
					6'b000001:	mode <= `ChooseModePage;
					default:	mode <= `Song_GameMode;
				endcase
		    else if(mode == `UserRanking)
		        case ({pose_center, pose_up, pose_down, pose_left, pose_right, pose_esc})
                    6'b000001:  mode <= `ChooseModePage;
                    default:    mode <= `UserRanking;
                endcase
			else 
				mode <= mode;
		end
	end
    
	//------------------Tub Display------------------//
	`include "TubParams.v"
	wire tub_en = (mode == `FreeMode || mode == `LearnMode || mode == `GameMode || mode == `PlayMode
					|| mode == `Song_PlayMode || mode == `Song_LearnMode || mode == `Song_GameMode);
	reg [7:0] tub_in7, tub_in6, tub_in5, tub_in4, tub_in3, tub_in2, tub_in1, tub_in0;
	TubDisplay TubDisplay_inst(
		.sys_clk	(sys_clk	),
		.rst_n		(rst_n		),
		.data7		(tub_in7	),
		.data6		(tub_in6	),
		.data5		(tub_in5	),
		.data4		(tub_in4	),
		.data3		(tub_in3	),
		.data2		(tub_in2	),
		.data1		(tub_in1	),
		.data0		(tub_in0	),
		.en			(tub_en		),
		.tub_sel	(tub_sel	),
		.tub_data1	(tub_data1	),
		.tub_data2	(tub_data2	)
	);
	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n) begin
			tub_in7 <= `tub_H;	tub_in6 <= `tub_E;	tub_in5 <= `tub_L;	tub_in4 <= `tub_L;
			tub_in3 <= `tub_O;	tub_in2 <= `tub_nil;tub_in1 <= `tub_nil;tub_in0 <= `tub_nil;
		end
		else if (mode == `WelcomePage) begin
			tub_in7 <= `tub_H;	tub_in6 <= `tub_E;	tub_in5 <= `tub_L;	tub_in4 <= `tub_L;
			tub_in3 <= `tub_O;	tub_in2 <= `tub_nil;tub_in1 <= `tub_nil;tub_in0 <= `tub_nil;
		end
		else if (mode == `ChooseModePage) begin
		    tub_in7 <= `tub_C;	tub_in6 <= `tub_H;	tub_in5 <= `tub_O;	tub_in4 <= `tub_O;
            tub_in3 <= `tub_S;  tub_in2 <= `tub_E;  tub_in1 <= `tub_nil;tub_in0 <= `tub_nil;
        end
		else if (mode == `Song_GameMode || mode == `Song_LearnMode || mode == `Song_PlayMode
				|| mode == `GameMode || mode == `LearnMode || mode == `PlayMode) begin
			tub_in7 <= `tub_S;	tub_in6 <= `tub_O;	tub_in5 <= `tub_N;	tub_in4 <= `tub_G;
			tub_in3 <= `tub_nil;tub_in2 <= `tub_nil;tub_in1 <= `tub_0;
			case (song_id)
				3'b000: tub_in0 <= `tub_1;
				3'b001: tub_in0 <= `tub_2;
				3'b010: tub_in0 <= `tub_3;
				3'b011: tub_in0 <= `tub_4;
				3'b100: tub_in0 <= `tub_5;
				3'b101: tub_in0 <= `tub_6;
				3'b110: tub_in0 <= `tub_7;
				3'b111: tub_in0 <= `tub_8;
				default: tub_in0 <= `tub_0;
			endcase
		end
		else begin
		  tub_in7 <= `tub_nil; tub_in6 <= `tub_nil; tub_in5 <= `tub_nil; tub_in4 <= `tub_nil;
          tub_in3 <= `tub_nil; tub_in2 <= `tub_nil; tub_in1 <= `tub_nil; tub_in0 <= `tub_nil;
        end
	end
      
    //------------------Memory------------------//
    reg                       read_en;
    wire                      read_rst = 0;
    wire  [2:0]               select;
    wire  [9:0]               data_out;
    wire                      output_ready;
    wire                      full_flag;      
    wire  [2:0]               count;
    wire  [9:0]               duration;
    wire                      breath_light;


	assign select = song_id;

    MemoryBlock MemoryBlock_inst(
        .clk                    (sys_clk),
        .rst_n                  (rst_n),
        .write_en               (pres_rec && (mode == `FreeMode || mode == `LearnMode || mode == `GameMode || mode == `PlayMode)),
        .read_en                (read_en),
        .read_rst               (read_rst),
        .current_state          (mode),
        .select                 (select),
        .data_in                ({pres_buts[0], pres_buts[1], pres_buts[2], pres_buts[3], pres_buts[4], pres_buts[5], pres_buts[6], pres_buts[7], octave}),
        .save                   (pres_right && mode == `PlayMode && select == next_addr),
        .discard                (pres_left && mode == `PlayMode && select == next_addr),
        .delete                 (pres_del && (mode == `Song_PlayMode || mode == `Song_GameMode || mode == `Song_LearnMode)),
        .data_out               (data_out),
        .output_ready           (output_ready),
        .full_flag              (full_flag),
        .count                  (count),
        .next                   (next_addr),
        .duration               (duration),
        .unit_status            (unit_status),
        .breath_light           (breath_light)
    );
    
	//------------------Free Mode------------------//
	wire               pwm_fm;
    wire               sd_fm;
    FreeMode FreeMode_inst(
        .clk                    (sys_clk            ),
        .rst_n                  (mode == `FreeMode| mode == `LearnMode),
        .buts                   (pres_buts          ),
        .but_up                 (pose_up            ),
        .but_center             (pose_center        ),
        .but_down               (pose_down          ),
        .pwm                    (pwm_fm             ),
        .sd                     (sd_fm              ),
        .octave                 (octave             )
    );
    
    //------------------Play Mode------------------//
    wire pwm_pm;
    wire sd_pm;
    wire read_en_pm;
    wire [9:0] vga_bottom_pm;
    PlayMode PlayMode_inst(
        .clk                (sys_clk),
        .isMode             (mode == `PlayMode),
        .vga_bottom_pm      (vga_bottom_pm),
        .read_en            (read_en_pm),
        .pwm                (pwm_pm),
        .sd                 (sd_pm)
    );
    
    //------------------Learn Mode------------------//
    wire read_en_lm;
    wire [9:0] vga_bottom_lm;
    LearnMode LearnMode_inst(
        .clk(sys_clk),
        .rst_n(mode == `LearnMode),
        // .buts(pose_buts),
        .buts(pres_buts),
        .octave(octave),
        .data_out(vga_bottom_lm),
        .read_en(read_en_lm)
    );
    
    //------------------Game Mode------------------//
    wire pwm_gm;
    wire sd_gm;
    wire read_en_gm;
    wire [9:0] vga_bottom_gm;
    GameMode GameMode_inst(
        .clk(sys_clk),
        .rst_n(mode == `GameMode),
        .output_ready(output_ready),
        .data_out(vga_bottom_gm),
        .read_en(read_en_gm),
        .pwm(pwm_gm),
        .sd(sd_gm)
    );
	
	//------------------PWM Choose Panel------------------//
    always @* begin
        case(mode) 
            `PlayMode: begin pwm = pwm_pm; sd = sd_pm; read_en = read_en_pm; LED[7:1] = {vga_bottom_pm[2], vga_bottom_pm[3], vga_bottom_pm[4], vga_bottom_pm[5], vga_bottom_pm[6], vga_bottom_pm[7], vga_bottom_pm[8]}; LED[0] = breath_light; end
            `FreeMode: begin pwm = pwm_fm; sd = sd_fm; read_en = 0; LED[7:1] = pres_buts[7:1]; LED[0] = breath_light; end
            `LearnMode: begin pwm = pwm_fm; sd = sd_fm; read_en = read_en_lm; LED[7:1] = {vga_bottom_lm[2], vga_bottom_lm[3], vga_bottom_lm[4], vga_bottom_lm[5], vga_bottom_lm[6], vga_bottom_lm[7], vga_bottom_lm[8]}; LED[0] = breath_light; end
            `GameMode: begin pwm = pwm_gm; sd = sd_gm; read_en = read_en_gm; LED[7:1] = pres_buts[7:1]; LED[0] = output_ready; end
            default: begin pwm = 0; sd = 0; read_en = 0; end
        endcase
    end

    //------------------VGA_module------------------//
    wire        [23:0]      color;
    vga_top vga_inst(
        //Input port
        .sys_clk         (sys_clk),  //Input Clock: 100 MHz 
        .sys_rst_n       (rst_n),   //Reset Signal: Low active 
        //General Inputs
        .key             (pres_buts),
        .mode            (mode),
        .next_mode       (next_mode),
        .shift           (octave),
        //Welcome Page Username Inputs
        .username        (newUsername),
        .currentuser     ("Current"),
        //Song repertoire
        .repertoire_page (repertoire_page),
        .page_song_id    (page_song_id),
        .songname_1      (song_visibility[repertoire_page ? 4 : 0] ? songname[repertoire_page ? 4 : 0] : "*****"),
        .songname_2      (song_visibility[repertoire_page ? 5 : 1] ? songname[repertoire_page ? 5 : 1] : "*****"),
        .songname_3      (song_visibility[repertoire_page ? 6 : 2] ? songname[repertoire_page ? 6 : 2] : "*****"),
        .songname_4      (song_visibility[repertoire_page ? 7 : 3] ? songname[repertoire_page ? 7 : 3] : "*****"),
        //Playmode inputs and outputs
        .output_ready    (output_ready),//input from memory
        .data_out        (data_out), //input from memory
        .vga_bottom_pm   (vga_bottom_pm),//output from vga play mode
        .vga_bottom_lm   (vga_bottom_lm),//output from vga learn mode
        .vga_bottom_gm   (vga_bottom_gm),//output from vga game mode 
		.duration		 (duration     ),
		//Setting Mode Inputs
		.setting_cnt     (setting_cnt),
		//Recording Inputs
		.recording       (pres_rec   ),
		.handling_rec    (handling_rec),
        //Output port
        .hsync           (hsync),   //Horizontal Sync Signal
        .vsync           (vsync),   //Vertical Sync Signal
        .color           (color)    //RGB Data
    );
    
    assign color_red = color[23:20];
    assign color_green = color[15:12];
    assign color_blue = color[7:4];
endmodule
