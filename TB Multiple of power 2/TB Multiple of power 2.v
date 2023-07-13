///Multiples of power

class addr2power;
  rand bit[8:0]addr;
  randc bit[2:0]add2;
  constraint ADDR{addr==2**add2;}
endclass
module test;
  initial begin
    addr2power addr_pow;
    addr_pow=new();
    
    repeat(10)begin
      addr_pow.randomize();
      
      $display("%0d",addr_pow.addr);
    end
  end
endmodule
