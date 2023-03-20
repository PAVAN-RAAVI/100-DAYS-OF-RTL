`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2023 22:00:44
// Design Name: 
// Module Name: POSEDGE_DECTECTOR
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


module POSEDGE_DECTECTOR(input  data,    // Input data for which positive edge has to be detected
	 input clock,    // Input signal for clock
    output edge_detect);
  reg data_q;    // Internal signal to store the delayed version of signal
   
   
    // This always block ensures that sig_dly is exactly 1 clock behind sig
  always @ (posedge clock) begin
      data_q <= data;
  end
  // Combinational logic where sig is AND with delayed, inverted version of sig
  // Assign statement assigns the evaluated expression in the RHS to the internal net pe
  assign edge_detect = data & ~data_q;  
endmodule
