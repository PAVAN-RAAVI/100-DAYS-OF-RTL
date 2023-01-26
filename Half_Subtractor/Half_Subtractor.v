`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 14:01:19
// Design Name: 
// Module Name: half_sub
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
////////////////////Design of Half_Subtractor////////////////////////////////////////////////////////////
//In the form of design flow  level/////////////////

module half_sub(a,b,diff,bo);
input a,b;
output diff,bo;
assign diff=a^b;
assign bo= ~a&b;
endmodule
