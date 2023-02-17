`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 07:43:56
// Design Name: 
// Module Name: T_tb
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


module T_tb();
reg T;
reg CLK;
wire Q;
wire Qbar;
T_FlipFlop uut (.T(T), .CLK(CLK), .Q(Q), .Qbar(Qbar));
 initial CLK = 0;
    always #100 CLK = ~CLK;
 initial T=0;
   always #100 T=~T;
initial begin
T = 0;
CLK = 0;
end
endmodule
