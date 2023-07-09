
//Constraint to generate unique numbers between 99 to 100.

class packet;
  randc int a;
  real b;
  constraint c1 {a inside {[99:100]};}
                 function void post_randomize();
                   b=a/10.0;
                 endfunction
endclass
 module test;
 initial begin
  packet pkt=new;
  repeat(10)begin
   pkt.randomize();
    $display("a=%d,b=%f",pkt.a,pkt.b);
  end
 end
endmodule
           
