`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2023 18:44:07
// Design Name: 
// Module Name: BIDRIECTIONAL_tb
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


module BIDRIECTIONAL_tb();
parameter MSB = 4; 
 reg data;
 reg clk;
 reg en; 
 reg dir; 
 reg rstn;     
 wire [MSB-1:0] out;
 
   BIDIRECTIONAL_REG  #(MSB) sr0  (  .d (data),  
                            .clk (clk),  
                            .en (en),  
                            .dir (dir),  
                            .rstn (rstn),  
                            .out (out));    
   always #10 clk = ~clk; 
   
   initial begin  
         clk <= 0;  
         en <= 0;  
         dir <= 0;  
         rstn <= 0;  
         data <= 'h1;  
      end  
      
       initial begin  
       
           // 1. Apply reset and deassert reset after some time  
           rstn <= 0;  
           #20 rstn <= 1;  
               en <= 1;  
       
           // 2. For 7 clocks, drive alternate values to data pin  
           repeat (7) @ (posedge clk)  
              data <= ~data;  
       
          // 3. Shift direction and drive alternate value to data pin for another 7 clocks  
           #10 dir <= 1;  
           repeat (7) @ (posedge clk)  
              data <= ~data;  
       
           // 4. Drive nothing for the next 7 clocks, allow shift register to shift based on dir simply  
           repeat (7) @ (posedge clk);  
       
           // 5. Finish the simulation  
           $finish;  
        end  
       
        // Monitor values of these variables and print them into the log file for debug  
        initial  
           $monitor ("rstn=%0b data=%b, en=%0b, dir=%0b, out=%b", rstn, data, en, dir, out);  
endmodule
