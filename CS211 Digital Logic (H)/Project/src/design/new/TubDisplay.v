module TubDisplay #(
	parameter		NUM_TUBS = 8,
	parameter		NUM_DIGITS = 8
) (
	input								sys_clk,
	input								rst_n,
	input		[(NUM_TUBS - 1):0]		data7,
	input		[(NUM_TUBS - 1):0]		data6,
	input		[(NUM_TUBS - 1):0]		data5,
	input		[(NUM_TUBS - 1):0]		data4,
	input		[(NUM_TUBS - 1):0]		data3,
	input		[(NUM_TUBS - 1):0]		data2,
	input		[(NUM_TUBS - 1):0]		data1,
	input		[(NUM_TUBS - 1):0]		data0,
	input								en,
	output	reg [(NUM_DIGITS - 1):0]	tub_sel,
	output	reg [(NUM_TUBS - 1):0]		tub_data1,
	output	reg [(NUM_TUBS - 1):0]		tub_data2
);
	// module for displaying info on 7-segment tubes
	// inputs:
	// - sys_clk: system clock
	// - rst_n: reset signal
	// - data7 to data0: expected data to be displayed
	// - en: enable signal (when en = 0, the display is turned off)
	// outputs:
	// - tub_sel: selection signal for the 7-segment tubes
	// - tub_data1: data to be displayed on the left 4 tubes
	// - tub_data2: data to be displayed on the right 4 tubes

	initial begin
		tub_sel = 8'h01;
		tub_data1 = 0;
		tub_data2 = 0;
	end


	// to achieve a better display effect
	// we use a medium-speed clock of about 1500Hz here
	reg [15:0] cnt;
    always @(posedge sys_clk) begin
        cnt <= cnt + 1;
    end

    reg slow_clk;
    always @(posedge sys_clk) begin
        if (cnt == 0) begin
            slow_clk <= ~slow_clk;
        end
    end

	// determine which bit to display
	always @(posedge slow_clk or negedge rst_n) begin
		if (~rst_n)
			tub_sel <= 8'h01;
		else
			tub_sel <= {tub_sel[6:0], tub_sel[7]};
	end

	// determine what to display
	always @* begin
		if (~rst_n) begin
			tub_data1 = 0;
			tub_data2 = 0;
		end
		else begin
			case (tub_sel)
				8'h80: tub_data1 = data7;
				8'h40: tub_data1 = data6;
				8'h20: tub_data1 = data5;
				8'h10: tub_data1 = data4;
				8'h08: tub_data2 = data3;
				8'h04: tub_data2 = data2;
				8'h02: tub_data2 = data1;
				default: tub_data2 = data0;
			endcase
		end
	end
endmodule