`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 07:43:17
// Design Name: 
// Module Name: T_FlipFlop
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


module T_FlipFlop(T,CLK,Q,Qbar);
input T,CLK;
output Q,Qbar;
reg Q,Qbar;
always@(posedge(CLK))
begin
if(T==0)
begin
 Q =1'b1;
 Qbar=1'b0;
end
else
begin
 Q =1'b0;
 Qbar=1'b1;
 end
end
endmodule
