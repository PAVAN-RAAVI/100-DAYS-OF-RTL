/*define a constraint in SystemVerilog to ensure that odd
locations in a random array contain even numbers, and even locations
contain odd numbers*/


class a;
 rand bit[3:0] k[];

 // Define a constraint on the size of the array
 constraint b {k.size() inside {[4:20]};}

 // Define a constraint to ensure even locations contain odd numbers,
 // and odd locations contain even numbers
 constraint c {
 foreach (k[i]) {
   if (i % 2 == 1) // odd location
     k[i] % 2 == 0; // even number
   else if (i % 2 == 0) // even location
     k[i] % 2 == 1; // odd number
 }
 }
endclass
module test;
 initial begin
 a a1 = new();
 repeat (5) begin
 assert(a1.randomize());
 foreach (a1.k[i])
 $display(" the value of locations even and odd %0d %0d", i, a1.k[i]);
 $display("%p", a1.k);
 end
 end
endmodule
