`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2023 11:05:04
// Design Name: 
// Module Name: Singleport_RAM
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


module Singleport_RAM
#(parameter addr_width = 6,
parameter data_width=8,
parameter depth=64)
(input [data_width-1:0]data,
input [addr_width-1:0]addr,
input WE,clk,
output [data_width-1:0]q);
reg[data_width-1:0]ram[depth-1:0];
reg[addr_width-1:0]addr_reg;
always @(posedge clk)
begin
if(WE)
ram[addr]<=data;
else
addr_reg<=addr;
end
assign q=ram[addr_reg];
endmodule
