`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2023 19:08:48
// Design Name: 
// Module Name: D_FLIPFLOP1
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
///////////////////Behavioural level///////////////////////////////////////////////////////////////


module D_FLIPFLOP1(D,CLK,SYNC_RESET,Q);
input D; // Data input 
input CLK; // clock input 
input SYNC_RESET; // synchronous reset 
output reg Q; // output Q 
always @(posedge CLK) 
begin
 if(SYNC_RESET==1'b1)
  Q <= 1'b0; 
 else 
  Q <= D; 
end 
endmodule
