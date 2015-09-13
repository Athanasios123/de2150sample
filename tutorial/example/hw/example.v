module example( input CLOCK_50, input [0:0] KEY, 
	output [6:0] HEX0, output [6:0] HEX1, output [6:0] HEX2,
	output [6:0] HEX3, output [6:0] HEX4, output [6:0] HEX5,
	output [6:0] HEX6, output [6:0] HEX7, output [17:0] LEDR ) ;
	
	system sys(
				// 1) global signals:
                 .clk(CLOCK_50),
                 .reset_n(KEY[0]),

                // the_hex_display
                 .hex0_from_the_hex_display(HEX0),
                 .hex1_from_the_hex_display(HEX1),
                 .hex2_from_the_hex_display(HEX2),
                 .hex3_from_the_hex_display(HEX3),
                 .hex4_from_the_hex_display(HEX4),
                 .hex5_from_the_hex_display(HEX5),
                 .hex6_from_the_hex_display(HEX6),
                 .hex7_from_the_hex_display(HEX7),

                // the_ledr
                 .out_port_from_the_ledr(LEDR)
	) ;
endmodule