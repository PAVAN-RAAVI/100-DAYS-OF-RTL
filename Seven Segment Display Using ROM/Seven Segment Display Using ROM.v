`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 18:41:54
// Design Name: 
// Module Name: Sevenseg_rom
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


module Sevenseg_rom
 #
 (parameter addr_width = 16, // store 16 elements
addr_bits = 4, // required bits to store 16 elements
data_width = 7 // each element has 7-bits
)
(input wire [addr_bits-1:0] addr,
output reg [data_width-1:0] data // reg (not wire)
);
always @*
 begin
 case(addr)
 4'b0000 : data = 7'b1000000; // 0
 4'b0001 : data = 7'b1111001; // 1
4'b0010 : data = 7'b0100100; // 2
 4'b0011 : data = 7'b0110000; // 3
4'b0100 : data = 7'b0011001; // 4
 4'b0101 : data = 7'b0010010; // 5
 4'b0110 : data = 7'b0000010; // 6
 4'b0111 : data = 7'b1111000; // 7
4'b1000 : data = 7'b0000000; // 8
 4'b1001 : data = 7'b0010000; // 9
 4'b1010 : data = 7'b0001000; // a
   4'b1011 : data = 7'b0000011; // b
   4'b1100 : data = 7'b1000110; // c
 4'b1101 : data = 7'b0100001; // d
 4'b1110 : data = 7'b0000110; // e
 default : data = 7'b0001110; // f
endcase
 end
endmodule
