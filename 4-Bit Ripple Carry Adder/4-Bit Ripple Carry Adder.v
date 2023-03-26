`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2023 11:33:43
// Design Name: 
// Module Name: Ripplecarry_Adder
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

module full_adder(a,b,cin,s,c);
input a,b,cin;
output s,c;
assign s=a^b^cin;
assign c=a&b|b&cin|cin&a;
endmodule

module Ripplecarry_Adder(a,b,s,co);
input [3:0] a,b;// Two 4-bit inputs
 output [3:0] s;
 output co;
 wire w1, w2, w3;
 // instantiating 4 1-bit full adders in Verilog
 full_adder fa0(a[0], b[0], 1'b0, s[0], w1);
 full_adder fa1(a[1], b[1], w1, s[1], w2);
 full_adder fa2(a[2], b[2], w2, s[2], w3);
 full_adder fa3(a[3], b[3], w3, s[3], co);
endmodule

