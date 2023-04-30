`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2023 19:06:54
// Design Name: 
// Module Name: Johnsoncounter_tb
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


module Johnsoncounter_tb();
reg reset, clock;
wire [3:0]q;
Johnson_counter dut(.q(q), .reset(reset),.clock(clock)); 
initial 
begin
  clock = 1'b0;
     forever #5 clock = ~clock;  
end 
initial
 begin 
 reset = 1'b1;
 #10;
 reset = 1'b0;
 end 
 initial begin
 $monitor("reset = %b, q= %b", reset,q);
 end
endmodule
