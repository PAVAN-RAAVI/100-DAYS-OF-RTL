`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2023 21:25:49
// Design Name: 
// Module Name: FixedPriority_tb
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


module FixedPriority_tb();
wire [3:0] GNT;

reg [3:0] REQ;
reg clk,reset ;

Fixed_priority dut(.GNT(GNT),.REQ(REQ),.clk(clk),.reset(reset));

initial
clk=0;
always #4 clk <= ~clk ;

initial 
begin
reset =0;
#4 reset =1;
repeat(20)
begin
#5  REQ<=$random();

end
#100 $finish();
end
initial begin
$monitor("REQ=%b,GNT=%b,reset=%b",REQ,GNT,reset);
end
endmodule
