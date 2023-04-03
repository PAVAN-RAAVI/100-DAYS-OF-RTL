`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2023 19:30:04
// Design Name: 
// Module Name: gcd_behmodel
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


module gcd_behmodel#(parameter W = 7)
(
input [W-1:0] A, B,
output  [W-1:0] GCD
);
reg [W-1:0] Ain, Bin, GCD;
always @(*)
begin
Ain = A; Bin = B;
while( Ain != Bin)
begin
if ( Ain < Bin )
Bin = Bin-Ain;
else
Ain = Ain - Bin;
end
GCD = Ain;
end
endmodule
