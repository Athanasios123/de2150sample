// number_to_hex_display: sets the corresponding signals to display the hex value of a digit on a hex display
// inputs: 
//	num: 4-bit number
//
// outputs:
//	hex: signals to hex display
module number_to_hex_display( num, hex ) ;
	input [3:0] num ;
	output [6:0] hex ;
	
	// hex segments are active low
	// 	6 = top
	//	5 = top right
	//	4 = bottom right
	//	3 = bottom
	//	2 = bottom left
	//	1 = top left
	//	0 = middle
	reg [0:6] hex ;
	always @( num )
	begin
		case( num )		
			4'h0:	hex = 7'b1111111 ;	// display blank
			4'h1:	hex = 7'b1111001 ;
			4'h2:	hex = 7'b0100100 ;
			4'h3:	hex = 7'b0110000 ;
			4'h4:	hex = 7'b0011001 ;
			4'h5:	hex = 7'b0010010 ;
			4'h6:	hex = 7'b0000010 ;
			4'h7:	hex = 7'b1111000 ;
			4'h8:	hex = 7'b0000000 ;
			4'h9:	hex = 7'b0011000 ;
			4'hA:	hex = 7'b0001000 ;
			4'hB:	hex = 7'b0000011 ;
			4'hC:	hex = 7'b1000110 ;
			4'hD:	hex = 7'b0100001 ;
			4'hE:	hex = 7'b0000110 ;
			4'hF:	hex = 7'b0001110 ;			
		endcase
	end
endmodule
