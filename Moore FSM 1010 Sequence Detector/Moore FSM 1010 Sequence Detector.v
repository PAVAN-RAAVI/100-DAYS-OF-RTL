`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 15:13:20
// Design Name: 
// Module Name: FSM_pattern
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


module FSM_pattern(din,reset,clk,y);
input din,clk,reset;
output reg y;
reg [2:0]current_state,next_state;  
localparam S0=3'b000,
            S1=3'b001,
            S2=3'b010,
            S3=3'b100;
 always @(current_state or din)
 begin
 case (current_state)
 S0: if(din==1'b1)
     begin
     next_state=S1;
     y=1'b0;
     end
     else next_state =current_state;
 S1:if(din==1'b0)
     begin
      next_state =S2;
      y=1'b0;
      end
      else
     begin
    next_state = current_state;
     y=1'b0;
     end
 S2: if(din==1'b1)
     begin
     next_state=S3;
     y=1'b0;
     end
     else
     begin
     next_state =S0;
     y=1'b0;
     end
 S3: if(din==1'b0)
     begin
     next_state=S2;
     y=1'b1;
     end
     else
     begin
     next_state=S1;
     y=1'b0;
     end
     default:next_state=S0;
     endcase
     end
always@(posedge clk)
begin
if(reset)
current_state<=S0;
else
current_state<=next_state;
end
endmodule
