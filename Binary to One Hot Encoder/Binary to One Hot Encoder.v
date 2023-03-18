`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 20:53:32
// Design Name: 
// Module Name: Binary_onehot
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


module Binary_onehot(dat1,result1);
parameter wid=4;
parameter result_wid= 16;
input [wid-1:0] dat1;
output [result_wid -1:0] result1;
assign result1 = 1'b1<<dat1 ;
endmodule
