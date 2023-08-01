/*A constraint to generate 0, 1, x and z randomly.*/


class packet; 
  rand logic a; 
  rand logic b; 
  function void post_randomize(); 
    b = $urandom_range(0,1); // Assign a random value to b 
    if (b) 
      a = a ? 'x : 'z; 
  endfunction 
endclass
// Define a test module to create an instance of packet and print its value of a 
module test; 
  initial 
    begin
    packet pkt = new; // Create a new instance of packet repeat (10) 
      begin pkt.randomize(); 
        $display(pkt.a); // Print the value of a after randomization
      end
    end 
endmodule
