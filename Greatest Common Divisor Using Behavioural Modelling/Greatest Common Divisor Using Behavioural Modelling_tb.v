`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2023 19:34:34
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb();
parameter W=7;
	// Inputs
	reg [W-1:0] A;
	reg [W-1:0] B;

	// Outputs
	wire [W-1:0] GCD;

	// Instantiate the Unit Under Test (UUT)
	gcd_behmodel uut (
		.A(A), 
		.B(B), 
		.GCD(GCD)
	);

	initial begin
        A=42;B=10;
		#10 A=25; B=41;
		#10 A=40;B=25;
		#10 A=36;B=7;
		#10 A=8;B=2;
		#10 A=1;B=33;
		#10 A=85;B=20;
		#10 A=54;B=66;
		#10 A=80;B=32;
		#10 A=19;B=41;
		#10 A=79;B=64;
		

	end
      initial
		begin
		$monitor("A= %d | B=%d | GCD=%d", A,B,GCD);
		#200 $finish;
		end
endmodule
