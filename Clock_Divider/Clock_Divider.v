`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 19:04:51
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(clk,reset,divby2,divby4,divby8);
input clk,reset;
reg[3:0]count;
output divby2,divby4,divby8;
reg divby2,divby4,divby8;
always@(posedge clk)
begin
if(reset==0)
count=4'b0000;
else
count=count+1;
divby2=count[1];
divby4=count[2];
divby8=count[3];
end
endmodule
