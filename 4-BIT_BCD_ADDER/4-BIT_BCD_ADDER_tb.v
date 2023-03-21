`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 20:05:48
// Design Name: 
// Module Name: bcdadder_tb
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


module bcdadder_tb();
wire [3:0] S;
wire C;
reg [3:0]A, B;
reg C0;
FOUR_BCD dut(A,B,S,C,C0);
initial
begin
A[3:0] = 4'b0000; B = 4'b0000; C0 = 1'b0;
#10 A[3:0] = 4'b1001; B = 4'b1001; C0 = 1'b0;
#10 A[3:0] = 4'b1000; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0001; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b0011; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b1011; C0 = 1'b0;
#10 A[3:0] = 4'b0111; B = 4'b0101; C0 = 1'b0;
#10 A[3:0] = 4'b0110; B = 4'b0001; C0 = 1'b0;
end
initial
begin
$monitor("A=%b| B=%b| Cin=%b|BCD Sum=%b|Cout=%b",A,B,C0,S,C);
 #200 $finish;
 end
endmodule
