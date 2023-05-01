`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.05.2023 18:38:07
// Design Name: 
// Module Name: Serial_Adder
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


module Serial_Adder(input clk,reset,  //clock and reset
        input a,b,cin,  //note that cin is used for only first iteration.
        output reg s,cout
);
reg c,flag;
always@(posedge clk or posedge reset)
begin
    if(reset == 1) begin //active high reset
        s = 0;
        cout = c;
        flag = 0;
    end else begin
        if(flag == 0) begin
            c = cin;  //on first iteration after reset, assign cin to c.
            flag = 1;  //then make flag 1, so that this if statement isnt executed any more.
        end 
        cout = 0;
        s = a ^ b ^ c;  //SUM
        c = (a & b) | (c & b) | (a & c);  //CARRY
    end 
end
endmodule
