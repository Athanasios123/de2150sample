// Nios address map:
//	0: value to display
module hex_display_comp( input clk, input reset_n, input [0:0] address, input write, input [31:0] writedata,
	output [6:0] hex0, output [6:0] hex1, output [6:0] hex2, output [6:0] hex3,
	output [6:0] hex4, output [6:0] hex5, output [6:0] hex6, output [6:0] hex7 ) ;
	
`define ADDR_VALUE 0

	reg [31:0] value ;
	always @( posedge clk, negedge reset_n )
		if( !reset_n )
			value <= 0 ;
		else if( address == `ADDR_VALUE && write == 1 )
			value <= writedata ;
	
	number_to_hex_display num_to_hex0( value[3:0], hex0 ) ;
	number_to_hex_display num_to_hex1( value[7:4], hex1 ) ;
	number_to_hex_display num_to_hex2( value[11:8], hex2 ) ;
	number_to_hex_display num_to_hex3( value[15:12], hex3 ) ;
	number_to_hex_display num_to_hex4( value[19:16], hex4 ) ;
	number_to_hex_display num_to_hex5( value[23:20], hex5 ) ;
	number_to_hex_display num_to_hex6( value[27:24], hex6 ) ;
	number_to_hex_display num_to_hex7( value[31:28], hex7 ) ;
endmodule
