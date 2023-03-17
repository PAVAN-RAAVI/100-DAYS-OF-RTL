`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 21:10:49
// Design Name: 
// Module Name: PIPO_tb
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


module PIPO_tb();
reg clk,clear;
wire [3:0]q;
reg [3:0]d;
PIPO_REG uut(.clk(clk),.clear(clear),.d(d),.q(q));
initial begin
clk=0;
clear=1;
#5 clear=1'b0;
#5 d=4'b0001;
#5 d=4'b0011;
#5 d=4'b0111;
#5 d=4'b1001;
#5 d=4'b1111;
end
always #1 clk=~clk;
initial begin
$monitor("Data In =%b|data out =%b",d,q);
#100 $stop;
end
endmodule
