
class packet;
  //class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit		 write;
  string	 pkt_type;
  
  //constructor
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    write = 1;
    pkt_type = "GOOD_PKT";
  endfunction
  
  //method to display class prperties
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0d",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0d",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
  
endclass

module sv_constructor;
  packet pkt;

  initial begin
    pkt = new();
    pkt.display();
  end  
endmodule
