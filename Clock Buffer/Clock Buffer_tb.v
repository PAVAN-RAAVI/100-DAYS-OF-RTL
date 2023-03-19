`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 08:43:26
// Design Name: 
// Module Name: clkbuffer_tb
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


module clkbuffer_tb();
reg pclock;
wire bclock;
realtime t1,t2,t3,t4,t5,t6;
parameter T=10;
CLK_BUFFER dut(pclock,bclock);
initial 
begin
pclock=1'b0;
forever #(T/2)pclock=~pclock;
end
task master;
begin
@(posedge pclock)t1=$realtime;
@(posedge pclock)t2=$realtime;
t3=t2-t1;
end
endtask
task bufout;
begin
@(posedge bclock)t4=$realtime;
@(posedge bclock)t5=$realtime;
t6=t5-t4;
end
endtask

task freq_phase;
realtime f,p;
begin
f=t6-t3;
p=t4-t1;
$display("freq_diff=%0t,phase_diff=%ot",f,p);
end 
endtask
initial 
begin
fork master;
bufout;
join freq_phase;
end
endmodule
