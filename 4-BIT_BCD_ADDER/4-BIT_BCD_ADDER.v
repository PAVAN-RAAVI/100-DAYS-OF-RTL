`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2023 20:01:20
// Design Name: 
// Module Name: FOUR_BCD
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


module FOUR_BCD(A,B,S,C,C0);
input [3:0]A,B;
input C0;
output [3:0]S;
output C;
wire C1,C2,C3,C4,C5;
wire [3:0]X,Z;
and (C1,Z[3],Z[2]);
and (C2,Z[3],Z[1]);
or (C,C3,C1,C2);
xor(C5,C,C);
assign X[2]=C;
assign X[1]=C;
assign X[3]=C5;
assign X[0]=C5;
FOUR_BIT_ADDER F_1(A,B,C0,Z,C3);
FOUR_BIT_ADDER F_2(X,Z,C0,S,C4);
endmodule

module full_adder12(a,b,c,s,co);
input a,b,c;
output s,co;
assign s=a^b^c;
assign co=(a&b)|(b&c)|(c&a);
endmodule
module FOUR_BIT_ADDER(x,y,cin,sum,cout);
input [3:0]x,y;
input cin;
output [3:0]sum;
output cout;
wire c0,c1,c2;
full_adder12 fa0(.a(x[0]),.b(y[0]),.c(cin),.s(sum[0]),.co(c0));
full_adder12 fa1(.a(x[1]),.b(y[1]),.c(c0),.s(sum[1]),.co(c1));
full_adder12 fa3(.a(x[2]),.b(y[2]),.c(c1),.s(sum[2]),.co(c2));
full_adder12 fa4(.a(x[3]),.b(y[3]),.c(c2),.s(sum[3]),.co(cout));
endmodule


