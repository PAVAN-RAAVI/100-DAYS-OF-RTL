/*Write a single constraint to generate random values for [8:0] bit*/


class packet;
 rand bit [8:0] val; // declare random variable val as a 9-bit wide bitvector

 constraint c1_range { val inside {[1:34], 127, [129:156], [192:202],
[257:260]}; } // define constraint c1_range on val

endclass
module constr_inside;
 initial
 begin
 packet pkt; // instantiate packet object pkt
 pkt = new(); // allocate memory for pkt

 repeat(10) // repeat the following block 10 times
 begin
 pkt.randomize(); // call the randomize method on pkt to generate a
random value for val

 $display("\t VALUE = %0d",pkt.val); // print the resulting value of val
 end
 end
endmodule
