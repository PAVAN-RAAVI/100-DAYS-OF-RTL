`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2023 21:31:55
// Design Name: 
// Module Name: JK_FLIPFLOP
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


module JK_FLIPFLOP(J,K,CLK,Q,Q_bar);
input J;
 input K;
 input CLK;
 output reg Q,Q_bar;
   always @ (posedge CLK) 
     begin 
      case ({J,K})  
         2'b00 :  Q <= Q;  
         2'b01 :  Q <= 0;  
         2'b10 :  Q <= 1;  
         2'b11 :  Q<= ~Q;  
      endcase  
Q_bar = ~Q;
     end
endmodule
