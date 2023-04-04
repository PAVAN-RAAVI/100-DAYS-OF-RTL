`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2023 21:56:20
// Design Name: 
// Module Name: roundrobin_tb
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


module roundrobin_tb();
reg clk;
  reg rst_n;
  reg [3:0] REQ;
  wire [3:0] GNT;
  //Instantiate Design Under Test
  roundrobin_arbiter DUT(.clk(clk), .rst_n(rst_n), .REQ(REQ), .GNT(GNT));
  //Generate a 10 ns  Time Period Clock 
  always #5 clk = ~clk;
  
  //Drive the DUT or Generate stimuli for the DUT
  
  initial begin
    clk = 0;
    rst_n = 1;
    REQ = 4'b0;
    
    #5 rst_n = 1;
    
    @(negedge clk) REQ = 4'b1000;    
    
    @(negedge clk) REQ = 4'b1010;
    
    @(negedge clk) REQ = 4'b0010;
    
    @(negedge clk) REQ = 4'b0110;
    
    @(negedge clk) REQ = 4'b1110;
    
    @(negedge clk) REQ = 4'b1111;
    
    @(negedge clk) REQ = 4'b0100;
    
    @(negedge clk) REQ = 4'b0010;
    #5 rst_n = 0;
    #100 $finish;
  end
endmodule
