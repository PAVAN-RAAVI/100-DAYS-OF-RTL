`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2023 19:30:07
// Design Name: 
// Module Name: demux_tb
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
///////////////////////TEST BENCH/////////////////////////////////////////////////////////


module demux_tb();
reg [2:0]S;
reg A;
wire [7:0]Y;
demu_1x8 cut(.y(Y), .a(A), .s(S));
initial
 begin
A=1;
S=3'd5;#20;
A=1;
S=3'd1;#20;
A=1;
S=3'd2;#20;
S=3'd6;#20;
A=1;
S=3'd3;#20;
A=1;
S=3'd4;#20;
A=1;
S=3'd7;#20;
$finish;
end
endmodule
