`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 11:30:21
// AUTHOR  Name: RAAVI.PAVAN KUMAR
// Module Name: MODN_COUNTER
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


module MODN_COUNTER # (parameter N = 10,parameter WIDTH = 4)
 ( input   clk,
   input   reset,
   input UPORDOWN,
      output  reg[WIDTH-1:0] COUNT);

 always @ (posedge clk )
 begin
   if (reset==1)
    COUNT <= 0;
   
   else 
   if(UPORDOWN==1)      //Up Mode is selected
            if (COUNT == N-1) 
      COUNT <= 0;
            else
       COUNT<=COUNT+1;  //increment counter
       
   else                //Down Mode is selected
     if(COUNT==0)
   COUNT<=N-1;
      else
      COUNT<=COUNT-1;    //Decrement the counter
   
   end
endmodule
