
///////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 15:32:55
// Design Name: 
// Module Name: mooreFSM_tb
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


module mooreFSM_tb();
reg din,clk,reset;
wire y;
FSM_pattern dut(din,reset,clk,y);
initial 
begin
reset=0;clk=0;din=0;
$monitor($time,,,"c=%b",clk,,"y=%b",y,,"r=%b",reset,,"d=%b",din);
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
end
always
#5 clk=~clk;
initial 
#500 $finish;
endmodule
