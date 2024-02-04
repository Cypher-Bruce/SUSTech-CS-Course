`timescale 1ns / 1ps
`include "MemoryPara.v"
// This is the top module of the memory unit.
// Contains 8 memory units, 1 of which is always ready to be written (like a buffer), others are used to store the music. (hence max memory is 8)
// Manage save, discard and delete signals.
// Maintain the status of each memory unit. (has data or not)
// Implemented as a combinational logic to reduce latency.
module MemoryBlock(
    input   wire                        clk             ,   // system clock
    input   wire                        rst_n           ,   // system reset
    input   wire                        write_en        ,   // write enable
    input   wire                        read_en         ,   // read enable
    input   wire                        read_rst        ,   // reset the read pointer (can be manually reset by top module, will automatically reset as stated in MemoryUnit.v)
    input   wire [`STATE_WIDTH-1:0]     current_state   ,   // current state of the system
    input   wire [`MAX_MEMORY_BIT-1:0]  select          ,   // select which memory unit to read from
    input   wire [`DATA_WIDTH-1:0]      data_in         ,   // input data
    input   wire                        save            ,   // save the recorded data
    input   wire                        discard         ,   // discard the recorded data
    input   wire                        delete          ,   // delete the selected memory unit (prewritten data cannot be deleted)
    output  wire [`DATA_WIDTH-1:0]      data_out        ,   // output data
    output  wire                        output_ready    ,   // output is valid when output_ready is high
    output  wire                        full_flag       ,   // indicate whether the memory is full (8 memory units are used, further recording will overwrite one of them)
    output  reg  [`MAX_MEMORY_BIT-1:0]  count           ,   // number of memory units that are used
    output  reg  [`MAX_MEMORY_BIT-1:0]  next            ,   // next memory unit to be written
    output  wire [`MAX_DEPTH_BIT-1:0]   duration        ,   // duration of the music
    output  reg  [`MAX_MEMORY-1:0]      unit_status     ,   // status of each memory unit (has data or not)
    output  wire                        breath_light        // led to indicate recording
);

wire                        unit_write_en       [0:7];  // write enable for each memory unit
wire [`DATA_WIDTH-1:0]      unit_data_out       [0:7];  // output data for each memory unit
wire                        unit_output_ready   [0:7];  // output ready for each memory unit
wire [`MAX_DEPTH_BIT-1:0]   unit_duration       [0:7];  // duration for each memory unit
wire                        unit_rst_n          [0:7];  // reset for each memory unit
reg                         custom_rst_n        [0:7];  // custom reset for each memory unit (managed by this module)
wire                        unit_read_rst       [0:7];  // read reset for each memory unit
wire                        light_out                ;  // led light
// Breath Light Unit
Breath_light light(
    .clk(clk),
    .rst_n(rst_n),
    .led(light_out)
);

assign breath_light = write_en & light_out;

// instantiate 9 memory units (5 prewritten, 4 for recording)
Internal_MemoryUnit_1 unit0(clk, unit_rst_n[0], unit_write_en[0], read_en, unit_read_rst[0], current_state, data_in, unit_data_out[0], unit_output_ready[0], unit_duration[0]);
Internal_MemoryUnit_2 unit1(clk, unit_rst_n[1], unit_write_en[1], read_en, unit_read_rst[1], current_state, data_in, unit_data_out[1], unit_output_ready[1], unit_duration[1]);
Internal_MemoryUnit_3 unit2(clk, unit_rst_n[2], unit_write_en[2], read_en, unit_read_rst[2], current_state, data_in, unit_data_out[2], unit_output_ready[2], unit_duration[2]);
Internal_MemoryUnit_4 unit3(clk, unit_rst_n[3], unit_write_en[3], read_en, unit_read_rst[3], current_state, data_in, unit_data_out[3], unit_output_ready[3], unit_duration[3]);
Internal_MemoryUnit_5 unit4(clk, unit_rst_n[4], unit_write_en[4], read_en, unit_read_rst[4], current_state, data_in, unit_data_out[4], unit_output_ready[4], unit_duration[4]);
MemoryUnit unit5(clk, unit_rst_n[5], unit_write_en[5], read_en, unit_read_rst[5], current_state, data_in, unit_data_out[5], unit_output_ready[5], unit_duration[5]);
MemoryUnit unit6(clk, unit_rst_n[6], unit_write_en[6], read_en, unit_read_rst[6], current_state, data_in, unit_data_out[6], unit_output_ready[6], unit_duration[6]);
MemoryUnit unit7(clk, unit_rst_n[7], unit_write_en[7], read_en, unit_read_rst[7], current_state, data_in, unit_data_out[7], unit_output_ready[7], unit_duration[7]);

// unit will be written when write_en is high and next is the selected unit
assign unit_write_en[0] = write_en & (next == 0);
assign unit_write_en[1] = write_en & (next == 1);
assign unit_write_en[2] = write_en & (next == 2);
assign unit_write_en[3] = write_en & (next == 3);
assign unit_write_en[4] = write_en & (next == 4);
assign unit_write_en[5] = write_en & (next == 5);
assign unit_write_en[6] = write_en & (next == 6);
assign unit_write_en[7] = write_en & (next == 7);

// unit will be reset when rst_n is low or custom_rst_n is low or when user deletes the selected unit
assign unit_rst_n[0] = rst_n & custom_rst_n[0] & ~(delete & (select == 0));
assign unit_rst_n[1] = rst_n & custom_rst_n[1] & ~(delete & (select == 1));
assign unit_rst_n[2] = rst_n & custom_rst_n[2] & ~(delete & (select == 2));
assign unit_rst_n[3] = rst_n & custom_rst_n[3] & ~(delete & (select == 3));
assign unit_rst_n[4] = rst_n & custom_rst_n[4] & ~(delete & (select == 4));
assign unit_rst_n[5] = rst_n & custom_rst_n[5] & ~(delete & (select == 5));
assign unit_rst_n[6] = rst_n & custom_rst_n[6] & ~(delete & (select == 6));
assign unit_rst_n[7] = rst_n & custom_rst_n[7] & ~(delete & (select == 7));

// unit will be read when read_en is high and select is the selected unit
assign unit_read_rst[0] = read_rst | (next == 0 & write_en);
assign unit_read_rst[1] = read_rst | (next == 1 & write_en);
assign unit_read_rst[2] = read_rst | (next == 2 & write_en);
assign unit_read_rst[3] = read_rst | (next == 3 & write_en);
assign unit_read_rst[4] = read_rst | (next == 4 & write_en);
assign unit_read_rst[5] = read_rst | (next == 5 & write_en);
assign unit_read_rst[6] = read_rst | (next == 6 & write_en);
assign unit_read_rst[7] = read_rst | (next == 7 & write_en);

// when count reaches 8, the memory is full
assign full_flag = (count == `MAX_MEMORY - 1);

// output data, output ready and duration are the selected unit's
assign data_out = unit_data_out[select];
assign output_ready = unit_output_ready[select];
assign duration = unit_duration[select];

wire pres_save, pose_save, nege_save;
KeyDebouncer saveDeboun(
        .slow_clk		(clk																		),
		.rst_n			(rst_n																			),
		.but_in			(save	),
		.but_active		(pres_save	),
		.but_posedge	(pose_save	),
		.but_negedge	(nege_save	)
);

wire pres_delete, pose_delete, nege_delete;
KeyDebouncer deleteDeboun(
        .slow_clk		(clk																		),
		.rst_n			(rst_n																			),
		.but_in			(delete	),
		.but_active		(pres_delete	),
		.but_posedge	(pose_delete	),
		.but_negedge	(nege_delete	)
);

wire pres_discard, pose_discard, nege_discard;
KeyDebouncer discardDeboun(
        .slow_clk		(clk																		),
		.rst_n			(rst_n																			),
		.but_in			(discard	),
		.but_active		(pres_discard	),
		.but_posedge	(pose_discard	),
		.but_negedge	(nege_discard	)
);

always @(posedge clk) begin
    if(~rst_n) begin
        next <= `PRE_WRITTEN_COUNT;
        count <= `PRE_WRITTEN_COUNT;
        unit_status <= (1<<`PRE_WRITTEN_COUNT) - 1;
    end else begin
        // when user deletes the selected unit, set the status to 0 and update count
        if (pose_delete && select >= `PRE_WRITTEN_COUNT) begin
           unit_status[select] <= 0;
           count <= count - 1;
        end
        
        // when user saves the recorded data, set the status to 1 and update count
        if (nege_save)begin
            unit_status[next] <= 1;
            unit_status[(next == `MAX_MEMORY - 1 ? `PRE_WRITTEN_COUNT : next + 1)] <= 0;
            next <= (next == `MAX_MEMORY - 1 ? `PRE_WRITTEN_COUNT : next + 1);
            count <= count + (full_flag ? 0 : 1);
        end
    end
end

// manage the custom reset for each memory unit
always @* begin
    // when user discards the recorded data, reset the memory unit (buffer) to default
    if(pres_discard) begin
        custom_rst_n[next] = 0;
    end else

    // when user saves the recorded data, reset the next buffer to default 
    if(pres_save)begin
        custom_rst_n[(next  == `MAX_MEMORY - 1 ? `PRE_WRITTEN_COUNT : next + 1)] = 0;

    // by default, do not reset any unit
    end else begin
        custom_rst_n[0] = 1;
        custom_rst_n[1] = 1;
        custom_rst_n[2] = 1;
        custom_rst_n[3] = 1;
        custom_rst_n[4] = 1;
        custom_rst_n[5] = 1;
        custom_rst_n[6] = 1;
        custom_rst_n[7] = 1;
    end
end


endmodule
