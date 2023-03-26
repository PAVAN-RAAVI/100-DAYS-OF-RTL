`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2023 12:02:13
// Design Name: 
// Module Name: Ripplecarry_tb
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


module Ripplecarry_tb();
reg [3:0] a, b; 
reg c;
wire [3:0] s; 
wire co;
Ripplecarry_Adder dut(a,b,s,co);
initial
begin
a = 4'b0000; b = 4'b0000; c = 1'b0; #10
 a = 4'b0001; b = 4'b0010; c = 1'b0; #10
 a = 4'b0010; b = 4'b0110; c = 1'b0; #10
a = 4'b0111; b = 4'b0111; c = 1'b0; #10
 a = 4'b1001; b = 4'b0110; c = 1'b0; #10
 a = 4'b1100; b = 4'b1100; c = 1'b1; #10
 a = 4'b1111; b = 4'b1110; c = 1'b1;#10
 a = 4'b1110; b = 4'b1110; c = 1'b1;#10
 a = 4'b1111; b = 4'b1111; c = 1'b1;
end
initial
begin
//display variables
$monitor("A=%B | B=%B | C=%B | Sum=%B | Carry=%B",a,b,c,s,co);
#100 $finish;
end 
endmodule
