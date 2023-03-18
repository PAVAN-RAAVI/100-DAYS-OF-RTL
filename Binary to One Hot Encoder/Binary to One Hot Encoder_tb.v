`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 20:59:40
// Design Name: 
// Module Name: HotEncoder_tb
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


module HotEncoder_tb();
 localparam wid = 4;
localparam result_wid = 16;
integer i;


reg [wid-1:0] dat1;
wire [result_wid-1:0] result1;

Binary_onehot dut(dat1,result1);

initial 
begin
  for( i=0; i<16; i=i+1)
  begin
    dat1 = i;
    #5;
  end
end

initial
begin
$monitor("Binary Value: %b | One hot encoded value : %b", dat1,result1);
#300 $finish;
end
endmodule
