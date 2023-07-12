
//Constrained Inheritance


class packet;
  rand  bit [3:0] addr;
  constraint addr_range { addr > 5; }
endclass

class packet2 extends packet;
  constraint addr_range { addr < 5; } //overriding constraint of parent class
endclass

module const_inhe;
  initial begin
    packet pkt1;
    packet2 pkt2;

    pkt1 = new();
    pkt2 = new();

    $display("------------------------------------");
    repeat(5) begin
      pkt1.randomize();
      $display("\tpkt1:: addr = %0d",pkt1.addr);
    end

    $display("------------------------------------"); 
    repeat(5) begin
      pkt2.randomize();
      $display("\tpkt2:: addr = %0d",pkt2.addr);
    end
    $display("------------------------------------");
  end
endmodule
