`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2023 18:52:41
// Design Name: 
// Module Name: SR_LATCH
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


module SR_LATCH(S,R,Q,Q_bar);
input S,R;
output Q,Q_bar;
assign Q=~(R|Q_bar);
assign Q_bar=~(S|Q);
endmodule
