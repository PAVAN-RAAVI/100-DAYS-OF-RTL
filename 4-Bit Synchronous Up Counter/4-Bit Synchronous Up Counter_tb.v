`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2023 19:33:15
// Design Name: 
// Module Name: upcounter_tb
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


module upcounter_tb();
reg clk, reset;
wire [3:0] counter;

UP_COUNTER uut(clk, reset, counter);
initial begin 
clk=0;
forever #50 clk=~clk;
end
initial begin
reset=1;#50;
reset=0;
end
endmodule
