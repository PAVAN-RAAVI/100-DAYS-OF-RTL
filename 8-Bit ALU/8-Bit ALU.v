`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.04.2023 13:41:15
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(a,b,opcode,result);
input [3:0]a,b;
input[2:0]opcode;
output [7:0]result;
reg [7:0]result; //the result is left-hand side of target and is declared as type reg
parameter add_op =3'b000, //addticn
sub_op =3'b001, //subtraction
mul_op =3'b010, //multiplication
and_op =3'b011, //multiplying using and gate
or_op =3'b100,// addition using or gate
not_op =3'b101, //not gate
xor_op =3'b110,  //xor gate
xnor_op =3'b111; //xnor gate
always @(a or b or opcode)
begin
case(opcode)
add_op :result = a+b;
sub_op :result = a-b;
mul_op :result = a*b;
and_op :result = a&b;
or_op :result = a|b;
not_op :result = ~a; //also be ~b
xor_op :result = a^b;
xnor_op :result = ~(a^b);
endcase
end
endmodule
