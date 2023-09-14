/*TB to generate a sequence of 10 random single-bit values that alternate between 0 and 1.
output:1010101010*/



//Defining a class called "packet" 
class packet; 
  rand bit a; 
  static bit b = 0; // Defining a constraint called "abc" to ensure that the random bit toggles between 0 and 1 
  constraint abc { a != b; } // Defining a function called "post_randomize" to print the value of "a" and update the value of "b" 
  function void post_randomize();
    $display("a=%d, b=%d", a, b); 
    b = a; 
  endfunction 
endclass // Defining a module called "test" 
module test;
  packet v; // Generating 10 random values using "repeat" loop
  initial begin
  v = new;
  repeat (10) begin 
    v.randomize();
  end
  end 
endmodule
