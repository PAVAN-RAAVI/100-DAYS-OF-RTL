`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2023 11:13:46
// Design Name: 
// Module Name: singleRam_tb
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


module singleRam_tb();
parameter addr_width=6;
parameter data_width=8;
parameter depth=64;
reg[data_width-1:0]data;
reg[addr_width:0]addr;
reg WE;
reg clk;
wire [data_width-1:0]q;
Singleport_RAM uut(.data(data),.addr(addr),.WE(WE),.clk(clk),.q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
data=8'h01;
addr=5'd0;
WE=1'b1;#10;

data=8'h02;
addr=5'd1;#10;

data=8'h03;
addr=5'd2;#10;

addr=5'd0;
WE=1'b0;#10;

addr=5'd1;#10;

addr=5'd2;#10;
end
endmodule
