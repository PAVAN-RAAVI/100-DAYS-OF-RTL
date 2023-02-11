`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.02.2023 21:03:02
// Design Name: 
// Module Name: N_bitcomparator
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


module N_bitcomparator(Lesser,Greater,Equal,a,b);
parameter n=16;
input [n-1:0]a,b;
output Lesser,Greater,Equal;
reg Lesser=0,Greater=0,Equal=0;
always @ (a,b)
begin
if(a>b)
begin
Lesser=0;Equal=0;Greater=1;
end
else if (a<b)
begin
Lesser=1;Equal=0;Greater=0;
end
else
begin
Lesser=0;Equal=1;Greater=0;
end
end
endmodule
