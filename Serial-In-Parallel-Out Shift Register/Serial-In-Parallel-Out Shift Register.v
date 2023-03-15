`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 19:01:37
// Design Name: 
// Module Name: SIPO_REG
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


module SIPO_REG(d,clk,q);
input d,clk;
output [3:0]q;
dff a1(d,clk,q[3]);
dff a2(q[3],clk,q[2]);
dff a3(q[2],clk,q[1]);
dff a4(q[1],clk,q[0]);
endmodule

module dff(d,clk,q);
input d,clk;
output q;
reg q=0;
always @(posedge clk)
begin
q<=d;
end
endmodule
