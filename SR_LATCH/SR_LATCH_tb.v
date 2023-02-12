`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2023 18:53:18
// Design Name: 
// Module Name: SRLatch_tb
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


module SRLatch_tb();
 reg S, R;  
wire Q, Q_bar; 
SR_LATCH dut(S, R, Q, Q_bar);
initial begin
    S=0; R=0; #50;
    S=0; R=1; #50
    S=1; R=0; #50
    S=1; R=1; #50
    $monitor("S=%b, R=%b ==> Q=%b, Q_bar=%b # invalid state, so discount error",
              S, R, Q, Q_bar);
end
endmodule
