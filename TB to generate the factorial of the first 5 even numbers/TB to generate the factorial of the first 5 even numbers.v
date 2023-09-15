// Define the class to generate the factorial of the first 5 even numbers 


class factt;
  rand int num[]; // Declare dynamic array of random integers
  constraint size {num.size == 5;} // Limit the size of the array to 5 
  constraint fact_num {
    foreach (num[i])
    num[i] == fact((i + 1) * 2); // Generate the factorial of each even number // num[i] == fact(((i + 1) * 2) - 1); // Alternatively, generate the factorial of each odd number
  } // Function to calculate the factorial of a number recursively 
  function int fact(int j);
    if (j == 0) 
      fact = 1;
    else 
      fact = j * fact(j - 1);
  endfunction 
endclass // Test the class by generating random factorials of even numbers 
module factorial; 
  factt f = new(); // Instantiate the class 
  initial
    begin 
      assert(f.randomize); // Randomize the values of the class constraints 
      $display("%p", f.num); // Display the generated factorials of even numbers 
    end
endmodule
