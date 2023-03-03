`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 11:34:36
// Author Name: RAAVI PAVAN KUMAR
// Module Name: MODN_tb
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


module MODN_tb();
	// Inputs
	reg clk;
	reg reset;
	reg UPORDOWN;

	// Outputs
	wire [3:0] COUNT;

	// Instantiate the Unit Under Test (UUT)
	MODN_COUNTER uut (
		.clk(clk), 
		.reset(reset), 
		.UPORDOWN(UPORDOWN), 
		.COUNT(COUNT)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
         #50 reset =0; 
         UPORDOWN = 0;
        #200;
        UPORDOWN = 1;
      #200;
        reset = 1;
        UPORDOWN = 0;
        #100;
        reset = 0;  
   
      
end

always #10 clk=~clk;

initial 
begin
$monitor("UporDown=%b | Count=%b",UPORDOWN,COUNT);
#1000 $finish;
end
endmodule
