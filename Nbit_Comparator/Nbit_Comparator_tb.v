`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2023 21:03:34
// Design Name: 
// Module Name: nbitcomparator_tb
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


module nbitcomparator_tb();
reg [15:0] a;
	reg [15:0] b;
	wire Lesser;
	wire Greater;
	wire Equal;

N_bitcomparator uut (
		.a(a), 
		.b(b), 
		.Lesser(Lesser), 
		.Greater(Greater), 
		.Equal(Equal)
	);
initial begin
	$monitor("    A=%d    B=%d   Lesser=%b     Greater=%b    Equal=%b   ",a,b,Lesser,Greater,Equal);
	end

	initial begin
	     a = 100;b = 101;
		#100 a=22;b=444;
		#100 a=444;b=555;
		#100 a=777;b=111;
		#100 a=8888;b=8888;
		#500 $finish;
        

	end
endmodule
