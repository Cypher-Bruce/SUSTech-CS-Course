`timescale 1ns / 1ps 
`include "VGAparams.v"
module vga_pic(
    input   wire            sys_clk             ,
    input   wire            vga_clk             ,
    input   wire            rst_n               ,
    input   wire    [9:0]   pos_x               ,
    input   wire    [9:0]   pos_y               ,
    //General Inputs
    input   wire    [7:0]   mode	            ,
    input   wire    [7:0]   next_mode           ,  
    input   wire    [7:0]   note                ,
    input   wire    [1:0]   shift               ,
    //Welcome Page Username Inputs
    input   wire    [63:0]  username            ,
    input   wire    [63:0]  currentuser         ,
    //Choose Panels Inputs
    input   wire            repertoire_page     ,
    input   wire    [1:0]   page_song_id        ,
    input   wire    [159:0] songname_1          ,
    input   wire    [159:0] songname_2          ,
    input   wire    [159:0] songname_3          ,
    input   wire    [159:0] songname_4          ,
    //Play Mode Inputs
    input   wire            output_ready        ,
    input   wire    [9:0]   data_out            ,
    //Setting Mode Inputs
    input   wire    [2:0]   setting_cnt         ,
    //Process Panel Inputs
    input   wire    [9:0]   duration            ,
    //Recording Inputs
    input                   recording    ,
    input                   handling_rec ,
    //Bottom Outputs
    output  wire    [9:0]   vga_bottom_pm       ,
    output  wire    [9:0]   vga_bottom_lm       ,
    output  wire    [9:0]   vga_bottom_gm       ,
    //Output Pixel Data
    output  reg    [23:0]  pos_data      
    );
    
    //------------- Welcome Page -------------//
    //Welcome Page can be used to choose users. (Based on panels with chars)
    wire             enable_welcomepage;
    assign enable_welcomepage = (mode == `WelcomePage)? 1'b1:1'b0;
    wire   [23:0]    output_welcomepage;
    WelcomePage welcome_page_inst(
            .vga_clk     (vga_clk),
            .rst_n       (rst_n),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .username    (username),
            .pos_data    (output_welcomepage) 
    );
    
    //------------- Choose Panel-------------//
    //Choose Panel can be used to choose modes. (Based on panels with chars)
    wire             enable_choosepanel;
    assign enable_choosepanel = (mode == `ChooseModePage)? 1'b1 : 1'b0;
    wire   [23:0]    output_choosepanel;
    ChoosePanel ChooseMode_inst(
            .vga_clk     (vga_clk),
            .rst_n       (rst_n),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .next_mode   (next_mode),
            .pos_data    (output_choosepanel)
    );
    
    //------------- Song Choose Panel -------------//
    //Song Choose Panel can be used to choose songs. (Based on panels with chars)
    wire            enable_songchoosepanel;
    assign enable_songchoosepanel  = (mode == `Song_PlayMode || mode == `Song_LearnMode || mode == `Song_GameMode) ? 1'b1 : 1'b0;
    wire    [23:0]  output_songchoosepanel;
    SongChoosePanel_vga songchoosepanel_vga_inst(
            .vga_clk     (vga_clk),
            .rst_n       (rst_n),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .repertoire_page (repertoire_page),
            .page_song_id    (page_song_id),
            .songname_1  (songname_1),
            .songname_2  (songname_2),
            .songname_3  (songname_3),
            .songname_4  (songname_4),
            .pos_data    (output_songchoosepanel) 
    );

    //------------- Free Mode -------------//
    //You can play song freely in Free Mode. (Based on notes block and notes display)
    wire             enable_freemode;
    assign enable_freemode = ((pos_y <= 384) && (mode == `FreeMode))? 1'b1: 1'b0;
    wire    [23:0]   output_freemode;
    FreeMode_vga freemode_vga_inst(
            .vga_clk     (vga_clk),
            .rst_n       ((mode == `FreeMode)),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .note        (note),
            .shift       (shift),
            .pos_data    (output_freemode)
    );
    
    //------------- Play Mode -------------//
    //You can listen to chosen songs in Play Mode. (Based on notes block and notes display)
    wire            enable_playmode;
    assign enable_playmode = ((pos_y <= 384) && (mode == `PlayMode))? 1'b1 : 1'b0;
    wire    [23:0]  output_playmode;
    Playmode_vga  playmode_vga_inst(
            .vga_clk     (vga_clk),
            .rst_n       ((mode == `PlayMode)),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .note        (data_out[9:2]),//Input for note
            .shift       (data_out[1:0]),//Input for shift
            .output_ready(output_ready),//Input for determing whether the song ends.
            .vga_bottom  (vga_bottom_pm),//Output for the bottom of the blocks
            .pos_data    (output_playmode)//Output for vga
    );
    
    //------------- Learn Mode-------------//
    //You can learn to play the chosen songs in Learn Mode. (Based on notes block and notes display)
    wire            enable_learnmode;
    assign enable_learnmode = ((pos_y <= 384) && (mode == `LearnMode )) ? 1'b1 : 1'b0;
    wire    [23:0]  output_learnmode;
    LearnMode_vga  learnmode_vga_inst(
            .vga_clk     (vga_clk),
            .rst_n       (mode == `LearnMode),
            .pos_x       (pos_x),
            .pos_y       (pos_y),
            .note        (data_out[9:2]),//Input for note
            .shift       (data_out[1:0]),//Input for shift
            .output_ready(output_ready),//Input for determing whether the song ends.
            .key         (note),//Input for user inputs
            .vga_bottom  (vga_bottom_lm),//Output for the bottom of the blocks
            .pos_data    (output_learnmode)//Output for vga
    );
    
    //------------- Game Mode -------------//
    //You can play music games and be judged in Game Mode. (Based on notes block and notes display)
    wire            enable_gamemode;
    assign enable_gamemode = ((pos_y <= 384) && (mode == `GameMode )) ? 1'b1 : 1'b0;
    wire    [23:0]  output_gamemode;
    wire    [7:0]  scores;
    GameMode_vga  gamemode_vga_inst(
            .vga_clk     (vga_clk),
            .rst_n       (mode == `GameMode),
            .pos_x       (pos_x),
            .pos_y       (pos_y),  
            .note        (data_out[9:2]),//Input for note
            .shift       (data_out[1:0]),//Input for shift
            .output_ready(output_ready),//Input for determing whether the song ends.
            .scores      (scores),//Output to update the scores
            .key         (note),//Input for user inputs
            .vga_bottom  (vga_bottom_gm),//Output for the bottom of the blocks   
            .pos_data    (output_gamemode)//Output for vga
    );
    
    //-------------Notes Display Panel -------------//
    //Display the bottom notes
    wire     [23:0]      notes_data;
    wire                 notes_enable;
    assign notes_enable = ((pos_y >= 416) && (mode == `LearnMode || mode == `PlayMode || mode == `FreeMode || mode == `GameMode)) ? 1'b1 : 1'b0;
    notes_display notes_display_inst_1(
        .vga_clk     (vga_clk           ),
        .pos_x       (pos_x             ),
        .pos_y       (pos_y             ),
        .pos_data    (notes_data        )
    );

    //------------- Setting Mode -------------//
    //You can customize your key setting in this panel. 
    wire     [23:0]      output_settingmode;
    wire                 enable_settingmode;
    assign enable_settingmode = (mode == `SettingMode) ? 1'b1 : 1'b0;
    SettingMode_vga #(
        .start_point_y   (224)
    )settingmode_inst (
        .vga_clk     (vga_clk           ),
        .pos_x       (pos_x             ),
        .pos_y       (pos_y             ),
        .setting_cnt (setting_cnt       ),
        .pos_data    (output_settingmode)
    );
    
    //------------- Scores Mode -------------//
    //You can check out the rank lists here. 
    wire             enable_scores;
    assign enable_scores = (mode == `UserRanking)? 1'b1 : 1'b0;
    wire   [23:0]    output_scores;
    Ranklist_vga ranking(
         .vga_clk     (vga_clk),
         .rst_n       (mode == `UserRanking),
         .pos_x       (pos_x),
         .pos_y       (pos_y),
         .username    (currentuser),
         .scores      (scores),//Input to update scores
         .output_ready(output_ready),
         .pos_data    (output_scores)
    );
    

    //------------- Additional panels instance -------------//
    //Process Panel Here
    wire     [23:0]      output_process;
    wire                 enable_process;
    assign enable_process = ((pos_y <= 5) && (mode == `LearnMode || mode == `PlayMode || mode == `GameMode)) ? 1'b1 : 1'b0;
    process process_inst(
        .clk         (sys_clk           ),
        .rst_n       ((mode == `LearnMode || mode == `PlayMode || mode == `GameMode)),
        .pos_x       (pos_x             ),
        .pos_y       (pos_y             ),
        .duration    (duration          ),
        .pos_data    (output_process    )
    );
    //REC panels here
    wire    [23:0]      output_REC;
    wire                enable_REC;
    recording_panel recording_panel_inst(
         .vga_clk     (vga_clk),
         .rst_n       (rst_n),
         .pos_x       (pos_x),
         .pos_y       (pos_y),
         .enable_pic  (enable_REC),
         .pos_data    (output_REC) 
    );
    //Save_delete panels here
    wire    [23:0]      output_save_delete;
    wire                enable_save_delete;
    save_delete_panel save_delete_panel_inst(
         .vga_clk     (vga_clk),
         .rst_n       (rst_n),
         .pos_x       (pos_x),
         .pos_y       (pos_y),
         .enable_pic  (enable_save_delete),
         .pos_data    (output_save_delete) 
    );

always @(posedge vga_clk or negedge rst_n) begin
    if(~rst_n)
        pos_data <= 24'hFFFFFF;
    else begin
        if(enable_process)
            pos_data <= output_process;
        else if(enable_REC && recording)
            pos_data <= output_REC;
        else if(enable_save_delete && handling_rec)
            pos_data <= output_save_delete;
        else if(enable_welcomepage)
            pos_data <= output_welcomepage;
        else if(enable_choosepanel)
            pos_data <= output_choosepanel;
        else if(enable_freemode)
            pos_data <= output_freemode ;
        else if(enable_songchoosepanel) 
            pos_data <= output_songchoosepanel;
        else if(enable_playmode) 
            pos_data <= output_playmode;
        else if(enable_learnmode) 
            pos_data <= output_learnmode;
        else if(enable_gamemode)
            pos_data <= output_gamemode;
        else if(enable_settingmode)
            pos_data <= output_settingmode;
        else if(enable_scores)
            pos_data <= output_scores;
        else if(notes_enable)
            pos_data <= notes_data;
        else 
            pos_data <= 24'hFFFFFF; 
    end
end
endmodule                              
