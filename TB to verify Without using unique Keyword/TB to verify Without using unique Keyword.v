/*Generate unique elements in an array without using the keyword unique*/

class packet; 
  rand bit [5:0] array[]; 
  randc int c; 
  constraint size_array {c inside {[4:20]}; array.size == c;}     
  constraint elements {foreach (array[i]) array[i] inside {[0:64]};} 
  constraint abc {foreach(array[i]) foreach(array[j]) if (i!=j) array[i]!=array[j];} 
endclass:packet 
 module foreach_constraint; 
   packet pkt = new();
   initial 
     begin 
       repeat (15) 
         begin 
           assert(pkt.randomize()); 
     $display("\nThe size of the array is %0d",pkt.array.size()); $display("Elements of the array = %0p",pkt.array); 
         end 
     end 
 endmodule
