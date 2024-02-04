module Setting (
    input               slow_clk,
    input               rst_n,
    input       [7:0]   pose_buts,
    input               pose_esc,
    output  reg [2:0]   perm0,
    output  reg [2:0]   perm1,
    output  reg [2:0]   perm2,
    output  reg [2:0]   perm3,
    output  reg [2:0]   perm4,
    output  reg [2:0]   perm5,
    output  reg [2:0]   perm6,
    output  reg [2:0]   perm7,
    output  reg [2:0]   setting_cnt
);
    // module for setting custom key mapping
    // inputs:
    // - slow_clk: 50Hz slow clock
    // - rst_n: reset signal
    // - pose_buts: 8 buttons for input notes (input the new mapping)
    //    press from do to si in order
    // - pose_esc: escape button (discard the settings and go back to choose mode page)
    // outputs:
    // - perm0 to perm 7: the new mapping for do to si
    // - setting_cnt: counter for the number of buttons pressed (for VGA display)

    reg     [2:0]       perm [7:0];
    always @(posedge slow_clk or negedge rst_n) begin
        if (~rst_n) begin
            // reset the mapping to default
            {perm[0], perm[1], perm[2], perm[3], perm[4], perm[5], perm[6], perm[7]} <= 0;
            perm0 <= 3'd0;
            perm1 <= 3'd1;
            perm2 <= 3'd2;
            perm3 <= 3'd3;
            perm4 <= 3'd4;
            perm5 <= 3'd5;
            perm6 <= 3'd6;
            perm7 <= 3'd7;
            setting_cnt <= 0;
        end
        else if (setting_cnt == 3'd7) begin
            // after all buttons are pressed, commit the changes
            {perm0, perm1, perm2, perm3, perm4, perm5, perm6, perm7} <= {perm[0], perm[1], perm[2], perm[3], perm[4], perm[5], perm[6], perm[7]};
            setting_cnt <= 0;
        end
        else begin
            // input the new mapping
            // if the user presses the escape button, discard the changes
            case (pose_buts)
                8'b00000001: {perm[~setting_cnt], setting_cnt} <= {3'd0, setting_cnt + 1'b1};
                8'b00000010: {perm[~setting_cnt], setting_cnt} <= {3'd1, setting_cnt + 1'b1};
                8'b00000100: {perm[~setting_cnt], setting_cnt} <= {3'd2, setting_cnt + 1'b1};
                8'b00001000: {perm[~setting_cnt], setting_cnt} <= {3'd3, setting_cnt + 1'b1};
                8'b00010000: {perm[~setting_cnt], setting_cnt} <= {3'd4, setting_cnt + 1'b1};
                8'b00100000: {perm[~setting_cnt], setting_cnt} <= {3'd5, setting_cnt + 1'b1};
                8'b01000000: {perm[~setting_cnt], setting_cnt} <= {3'd6, setting_cnt + 1'b1};
                8'b10000000: {perm[~setting_cnt], setting_cnt} <= {3'd7, setting_cnt + 1'b1};
                default: setting_cnt <= setting_cnt;
            endcase
        end
    end
endmodule