`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 18:44:03
// Design Name: 
// Module Name: Sevenseg_tb
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


module Sevenseg_tb();
reg [3:0] SW;
 wire [6:0] HEX0;
 wire [6:0] LEDR;
integer i;
 // signal to store received data, so that it can be displayed on
 // two devices i.e. seven segment display and LEDs
 wire [6:0] data;
 Sevenseg_rom rom_sevenseg(
 .addr(SW), .data(data)
 );
 initial begin
 for(i=0;i<16;i=i+1)
 begin
 SW=i;
 #10;
 end
 end
assign HEX0 = data; // display on seven segment devices
 assign LEDR = data; // display on LEDs
endmodule
