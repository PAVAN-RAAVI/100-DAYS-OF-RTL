`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2023 07:37:43
// Design Name: 
// Module Name: CarryAddder_tb
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
//////////////////////////Test Bench////////////////////////////////////////////////////////


module CarryAddder_tb();
reg [3:0] a, b; 
reg cin;
wire [3:0] sum; 
wire cout;
Carrylook_Ahead dut(a, b, cin, sum, cout);
initial
begin
a = 4'b0000; b = 4'b0000; cin = 1'b0; #10
 a = 4'b0001; b = 4'b0010; cin = 1'b0; #10
 a = 4'b0010; b = 4'b0110; cin = 1'b0; #10
a = 4'b0111; b = 4'b0111; cin = 1'b0; #10
 a = 4'b1001; b = 4'b0110; cin = 1'b0; #10
 a = 4'b1100; b = 4'b1100; cin = 1'b1; #10
 a = 4'b1111; b = 4'b1110; cin = 1'b1;#10
 a = 4'b1110; b = 4'b1110; cin = 1'b1;#10
 a = 4'b1111; b = 4'b1111; cin = 1'b1;
end
initial
begin
//display variables
$monitor("A=%B | B=%B | Cin=%B | Sum=%B | Carry=%B",a,b,cin,sum,cout);
#100 $finish;
end 
endmodule
