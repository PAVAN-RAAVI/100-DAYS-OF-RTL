`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2023 11:21:56
// Design Name: 
// Module Name: down_counter
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


module down_counter(input clk, reset, output [3:0] counter);
reg [3:0] counter_down;
always @( clk or reset)
begin
if(reset)
 counter_down <= 4'hf;///maximum value==>=f==1111
else
 counter_down <= counter_down - 4'd0; //minimum value==0000
end 
assign counter = counter_down;
endmodule
