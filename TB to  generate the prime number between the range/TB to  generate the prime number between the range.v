/*To generate prime numbers between the range of
1 to 200. */

class prime_numbers;
 rand bit [31:0] i;

 // Define the range of i to be from 1 to 200
  constraint a1 { i inside {[1:200]}; }

 // Define constraints to generate prime numbers
 constraint c {
 i != 1;

 // If i equals 2, then it is prime
 if (i == 2) {
 i == 2;
 } else {
 // If i is not 2, then check if it is divisible by 2
 i % 2 != 0;
 }

 // If i equals 3, then it is prime
 if (i == 3) {
 i == 3;
 } else {
 // If i is not 3, then check if it is divisible by 3
 i % 3 != 0;
 }

 // If i equals 5, then it is prime
 if (i == 5) {
 i == 5;
 } else {
 // If i is not 5, then check if it is divisible by 5
 i % 5 != 0;
 }

 // If i equals 7, then it is prime
 if (i == 7) {
 i == 7;
 } else {
 // If i is not 7, then check if it is divisible by 7
 i % 7 != 0;
 }
 }
endclass
   
module top;
 prime_numbers prime;
 initial begin
 prime = new();
   repeat (25) begin
 prime.randomize();
 $display("the prime: %d", prime.i);
 end
 end
endmodule
