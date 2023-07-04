//Scope Resolution
/*A static member of the class is accessed outside the class by using class resolution operator ::
*/
class packet;
         bit [31:0] addr;
  static bit [31:0] id;
  
  function display(bit [31:0] a,b);
    $display("Values are %0d %0d",a,b);
  endfunction
endclass

module sro_class;
  int id=10;
  initial begin
    packet p;
    p = new();
    packet::id = 20; //output be 20 and 10 it accessing the outside of the class
    p.display(packet::id,id); 
  end
endmodule
