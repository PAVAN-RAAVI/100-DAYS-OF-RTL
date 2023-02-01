

//////////Test bench////////////////////////////////



module BCD_tb();
  reg [3:0] bcd;
  wire [7:0] seg;
  integer i;

BCD_7SEG  uut ( .bcd(bcd),  .seg(seg));

task initialize;
{ bcd } = 0;
endtask

task stimulus;
begin
for(i = 0; i < 16; i = i+1) 
begin 
{ bcd } = i;
#10;
end     
end
endtask

initial
begin
initialize;
stimulus;
$finish();
$monitor("{bcd}=%b, {7seg}=%b", {bcd}, {seg});

end
endmodule
