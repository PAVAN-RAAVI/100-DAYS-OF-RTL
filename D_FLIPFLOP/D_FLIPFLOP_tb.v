`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.02.2023 19:09:48
// Design Name: 
// Module Name: D_tb
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
/////////////////////TEST BENCH/////////////////////////////////////////////////////////////


module D_tb();
reg D;
reg CLK;
reg RESET;
wire Q;
D_FLIPFLOP1 dut(D,CLK,RESET,Q);
initial begin
  CLK=0;
     forever #10 CLK = ~CLK;  
end 
initial begin 
 RESET=1;
 D <= 0;#100;
 RESET=0;
 D <= 1; #100;
 D <= 0;#100;
 D <= 1;
 end
endmodule
