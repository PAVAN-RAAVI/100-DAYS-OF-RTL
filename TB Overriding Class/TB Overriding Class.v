//Overriding Class

class parent_class;
  bit [31:0] addr;
  
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  
  function display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    child_class c=new();
    c.addr = 5;
    c.data = 10;
    c.display();
  end
endmodule
