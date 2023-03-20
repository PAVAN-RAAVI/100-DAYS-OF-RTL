`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 22:04:22
// Design Name: 
// Module Name: Posedge_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Posedge_tb();

	// Inputs
	reg data;
	reg clock;

	// Outputs
	wire edge_detect;

	// Instantiate the Unit Under Test (UUT)
POSEDGE_DECTECTOR uut (
		.data(data), 
		.clock(clock), 
		.edge_detect(edge_detect)
	);

	initial begin
		// Initialize Inputs
		data = 0;
		clock = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
		#15 data = 1;
		#20 data= 0;
		#15 data = 1;
		#10 data = 0;
    end
	
	// Generate a clock of 100MHz
	always #5 clock=~clock;
	
	initial begin
	$monitor("Data =%b, Edge_detect=%b ", data,edge_detect);
	#200 $finish;
	end
endmodule
