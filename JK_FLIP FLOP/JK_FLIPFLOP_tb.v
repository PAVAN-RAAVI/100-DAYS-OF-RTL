`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2023 21:34:56
// Design Name: 
// Module Name: JK_TB
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
//////////////////////////TEST BENCH////////////////////////////////////////////////////////


module JK_TB();
reg J,K,CLK;
wire Q, Q_bar;
JK_FLIPFLOP dut(.Q(Q), .Q_bar(Q_bar), .J(J), .K(K), .CLK(CLK)); 
initial
$monitor("simtime = %g, CLK = %b, J = %b, K = %b, Q = %b, Q_bar = %b", $time, CLK, J, K, Q, Q_bar);
initial 
begin
  CLK=0;
     forever #10 CLK = ~CLK;  
end 

initial
 begin 
   J= 0; K= 0;#20
  J= 0; K= 1; #20
  J= 1; K= 0; #20
  J= 1; K=1; 
 end 
endmodule
