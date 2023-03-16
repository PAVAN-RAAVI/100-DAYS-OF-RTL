`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 21:26:32
// Design Name: 
// Module Name: PISO_tb
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


module PISO_tb();
reg [3:0]d;
reg clk,s1;
wire q;
PISO_REG dut(d,clk,s1,q);
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
s1=0;d=4'b1100;
#10 s1=1;
#10 s1=1;
#10 s1=0;
#10 s1=0;d=4'b0110;
#100 $finish;
end
endmodule
