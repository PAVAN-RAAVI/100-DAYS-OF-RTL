`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 21:13:26
// Design Name: 
// Module Name: PISO_REG
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

module PISO_REG(d,clk,s1,q);
input [3:0]d;
input clk,s1;
output q;
wire q1,q2,q3,d1,d2,d3;
dff a(d[3],clk,q1);
s1 a1(q1,d[2],s1,d1);
dff b(d[1],clk,q2);
s1 b1(q2,d[1],s1,d2);
dff c(d1,clk,q3);
s1 c1(q3,d[0],s1,d3);
dff dd(d3,clk,q);
endmodule

module s1(a,b,s1,q);
input a,b,s1;
output q;
assign q=(~s1&b)|(s1&a);
endmodule

module d_ff(d,clk,q);
input d,clk;
output q;
reg q=0;
always @(clk);
initial 
begin
q<=d;
end
endmodule
