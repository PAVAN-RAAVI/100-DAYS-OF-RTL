`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 19:14:04
// Design Name: 
// Module Name: clkdivider_tb
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


module clkdivider_tb();
reg clk,reset;
wire divby2,divby4,divby8;
clk_divider uut(.clk(clk), 
		.divby2(divby2), 
		.divby4(divby4), 
		.divby8(divby8), 
		.reset(reset));
initial begin
clk=0;
reset=0;
#50 reset=1;
end
	always
	#10 clk=~clk;
	
	initial 
	#100 $finish;
endmodule
