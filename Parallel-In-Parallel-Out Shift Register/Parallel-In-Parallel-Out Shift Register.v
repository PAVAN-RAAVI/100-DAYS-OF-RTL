`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 21:09:59
// Design Name: 
// Module Name: PIPO_REG
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


module PIPO_REG(clk,clear,d,q);
input clk,clear;
output reg[3:0]q;
input [3:0]d;
always @(posedge clk)
begin
if(clear)
q=4'b0000;
else
q=d;
end
endmodule
