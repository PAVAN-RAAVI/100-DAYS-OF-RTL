
/*Randomize Queue */

class queue_rand;
  rand bit [5:0] qu[$];
  
  constraint size_c  { qu.size() inside {[4:10]}; }
  
  function void display();
    $display("qu size is = %0d",qu.size());
    $display("qu = %p",qu);
  endfunction
endclass

program queue_randomization;
  queue_rand pkt;

  initial begin
    pkt = new();
    pkt.randomize();
    pkt.display();   
  end
endprogram 
