`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2023 18:45:28
// Design Name: 
// Module Name: Barrelshift_tb
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


module Barrelshift_tb();
 reg [7:0] in;
 reg [2:0] ctrl;
 wire [7:0] out; 
 
Barrelshift_Reg uut(.in(in), .ctrl(ctrl), .out(out));
 
initial 
begin
       in= 8'd0;  ctrl=3'd0; //no shift
   #10 in=8'd128; ctrl= 3'd4; //shift 4 bit
   #10 in=8'd128; ctrl= 3'd2; //shift 2 bit
   #10 in=8'd128; ctrl= 3'd1; //shift by 1 bit
   #10 in=8'd255; ctrl= 3'd7; //shift by 7bit
     #10 in=8'd128; ctrl= 3'd3; //shift 3 bit
   #10 in=8'd128; ctrl= 3'd5; //shift by 5 bit
   #10 in=8'd255; ctrl= 3'd4; //shift by 5 bit
 end
   initial begin
     $monitor("Input=%b, Control=%b, Output=%b",in,ctrl,out);
       #300 $finish;
   end
endmodule
