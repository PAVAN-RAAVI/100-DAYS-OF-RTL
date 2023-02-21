`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 19:34:18
// Design Name: 
// Module Name: MSJK_tb
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


module MSJK_tb();

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire qn;
	wire qn_bar;

	// Instantiate the Unit Under Test (UUT)
	MSJK_FLIPFLOP uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.q_bar(q_bar)
	);

	initial begin
		// Initialize Inputs
	clk=0;
	#10 j = 0;k = 0;
	#10 j = 0;k = 1;
   #10 j = 1;k = 0;
   #10 j = 1;k = 1;	
	#10 j = 0;k = 0;
   #10 j = 0;k = 1;
	end
	always #5 clk=~clk;
	
initial
begin
$monitor("j=%b, j=%b, q=%b, q_bar=%b",j,k,q,q_bar);
#200 $finish;
end
endmodule
