//Super KeyWord
class parent_class;
  bit [31:0] addr;
  /*The parent class has the method ‘display’.
Implementing the method display in the child class will override the parent class method.
By calling super.display() from child class, the display method of the parent class can be accessed.*/
  
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  
  function display();
    super.display();
    $display("Data = %0d",data);
  endfunction
endclass

module inheritence;
  initial begin
    child_class c=new();
    c.addr = 5;
    c.data = 30;
    c.display();
  end
endmodule
