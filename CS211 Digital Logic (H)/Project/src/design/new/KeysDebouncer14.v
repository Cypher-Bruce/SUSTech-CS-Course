module KeysDebouncer14(
	input			slow_clk,
	input			rst_n,
	input	[13:0]	but_in,
	output	[13:0]	but_posedge,
	output	[13:0]	but_negedge,
	output	[13:0]	but_active
);
	// handle 14 buttons together, making the top simpler
	// buttons including:
	// - center, up, down, left, right
	// - 1 external button for esc
	// - 8 external buttons for entering notes
	// I/O ports: see the comments in KeyDebouncer.v
	
	KeyDebouncer KeyDebouncer0(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[0]		),
		.but_posedge(but_posedge[0]	),
		.but_negedge(but_negedge[0]	),
		.but_active	(but_active[0]	)
	);
	KeyDebouncer KeyDebouncer1(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[1]		),
		.but_posedge(but_posedge[1]	),
		.but_negedge(but_negedge[1]	),
		.but_active	(but_active[1]	)
	);
	KeyDebouncer KeyDebouncer2(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[2]		),
		.but_posedge(but_posedge[2]	),
		.but_negedge(but_negedge[2]	),
		.but_active	(but_active[2]	)
	);
	KeyDebouncer KeyDebouncer3(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[3]		),
		.but_posedge(but_posedge[3]	),
		.but_negedge(but_negedge[3]	),
		.but_active	(but_active[3]	)
	);
	KeyDebouncer KeyDebouncer4(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[4]		),
		.but_posedge(but_posedge[4]	),
		.but_negedge(but_negedge[4]	),
		.but_active	(but_active[4]	)
	);
	KeyDebouncer KeyDebouncer5(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[5]		),
		.but_posedge(but_posedge[5]	),
		.but_negedge(but_negedge[5]	),
		.but_active	(but_active[5]	)
	);
	KeyDebouncer KeyDebouncer6(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[6]		),
		.but_posedge(but_posedge[6]	),
		.but_negedge(but_negedge[6]	),
		.but_active	(but_active[6]	)
	);
	KeyDebouncer KeyDebouncer7(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[7]		),
		.but_posedge(but_posedge[7]	),
		.but_negedge(but_negedge[7]	),
		.but_active	(but_active[7]	)
	);
	KeyDebouncer KeyDebouncer8(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[8]		),
		.but_posedge(but_posedge[8]	),
		.but_negedge(but_negedge[8]	),
		.but_active	(but_active[8]	)
	);
	KeyDebouncer KeyDebouncer9(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[9]		),
		.but_posedge(but_posedge[9]	),
		.but_negedge(but_negedge[9]	),
		.but_active	(but_active[9]	)
	);
	KeyDebouncer KeyDebouncer10(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[10]		),
		.but_posedge(but_posedge[10]),
		.but_negedge(but_negedge[10]),
		.but_active	(but_active[10]	)
	);
	KeyDebouncer KeyDebouncer11(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[11]		),
		.but_posedge(but_posedge[11]),
		.but_negedge(but_negedge[11]),
		.but_active	(but_active[11]	)
	);
	KeyDebouncer KeyDebouncer12(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[12]		),
		.but_posedge(but_posedge[12]),
		.but_negedge(but_negedge[12]),
		.but_active	(but_active[12]	)
	);
	KeyDebouncer KeyDebouncer13(
		.slow_clk	(slow_clk		),
		.rst_n		(rst_n			),
		.but_in		(but_in[13]		),
		.but_posedge(but_posedge[13]),
		.but_negedge(but_negedge[13]),
		.but_active	(but_active[13]	)
	);
endmodule
