
module main (
	input [3:0] SW,
	input CLK,
	output LED_R,
	output LED_G,
	output LED_B
);

//-- Modify this value for changing the blink frequency
localparam N = 22;  //-- N<=21 Fast, N>=23 Slow

reg [N:0] counter;
always @(posedge CLK)
  counter = counter + 1;

assign LED_G = SW[1];
assign LED_R = SW[2];
assign LED_B = ~SW[1];

endmodule
