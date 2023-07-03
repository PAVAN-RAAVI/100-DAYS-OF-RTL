///Abstarct Class
/*Creating an object of a virtual class. An abstract class can only be derived, creating an object of a virtual class leads to a compilation error.
*/
//Here we are instantaiting the class
virtual class packet;
  bit [31:0] addr;
endclass
module virtual_class;
  initial begin
    packet p;
    p = new();
  end
endmodule
//and Here we are deriving the class
//An abstract class is derived and written extend the class and creating it.
virtual class packet;
  bit [31:0] addr;
endclass

class extended_packet extends packet;
  function void display;
    $display("Value of addr is %0d", addr);
  endfunction
endclass
 
module virtual_class;
  initial begin
    extended_packet p;
    p = new();
    p.addr = 20;
    p.display();
  end
endmodule
