`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2023 18:41:02
// Design Name: 
// Module Name: Serialadder_tb
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


module Serialadder_tb();
  // Inputs
  reg clk;
  reg reset;
  reg a;
  reg b;
  reg cin;

  // Outputs
  wire s;
  wire cout;

  // Instantiate the Unit Under Test (UUT)
  Serial_Adder uut (
      .clk(clk), 
      .reset(reset), 
      .a(a), 
      .b(b), 
      .cin(cin), 
      .s(s), 
      .cout(cout)
  );

//generate clock with 10 ns clock period.
  always
      #5 clk = ~clk;
      
  initial begin
      // Initialize Inputs
      clk = 1;
      reset = 0;
      a = 0;
      b = 0;
      cin = 0;
      reset = 1;  
      #20;
      reset = 0;
      //add two 4 bit numbers, 1010 + 1110 = 110000
      a = 1; b = 1; cin = 1;    #10;
      a = 0; b = 1; cin = 1; #10;
      a = 1; b = 1; cin = 0;  #10;
      a = 0; b = 0; cin = 0;  #10;
      reset = 1;
      #10;
      reset = 0;
      //add two 6 bit numbers , 001011 +101000 =110011
      a = 0; b = 1; cin = 0;    #10;
      a = 0; b = 0; cin = 0;  #10;
      a = 1; b = 1; cin = 0;  #10;
      a = 0; b = 0; cin = 0;  #10;
      a = 1; b = 0; cin = 1;  #10;
      a = 1; b = 0; cin = 1;  #10;
      reset = 1;
      #10;

  end
   
   initial $monitor(" A=%b | B=%b | Cin=%b | Sum=%b | Cout=%b | Clock =%b",a,b,cin,s,cout,clk);
endmodule
