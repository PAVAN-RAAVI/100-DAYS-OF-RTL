
/*Derive odd numbers within the range of 1 to 100 using SV constraint*/


class packet;
 rand bit[7:0] b[]; // dynamic array

 constraint abc1
  { b.size() inside {[1:100]}; } 
 constraint odd
  { 
 foreach (b[i])
 {
   b[i] inside {[1:100]};
 b[i] % 2 != 0;
 }
 }
endclass
module test;
 packet v;
 initial begin
 v = new();
 repeat(10) begin
 v.randomize();
 $display("%p", v.b);
 end
 end
endmodule
