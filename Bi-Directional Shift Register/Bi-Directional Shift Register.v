`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 18:43:02
// Design Name: 
// Module Name: BIDIRECTIONAL_REG
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


module BIDIRECTIONAL_REG #(parameter MSB=4)(input d,input clk,input en,input dir,input rstn, output reg[MSB-1:0] out); 
always @ (posedge clk)  
 if (!rstn)  
 out <= 0;  
  else begin
   if (en)
   case (dir)
   0 :  out <= {out[MSB-2:0], d};
   1 :  out <= {d, out[MSB-1:1]};
   endcase
    else
    out <= out;
    end
     endmodule  
                                            
