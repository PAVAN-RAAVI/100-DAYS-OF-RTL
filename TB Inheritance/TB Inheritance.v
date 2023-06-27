//INHERITANCE

/*PARENT CLASS
It’s an existing class;
The class whose features are inherited
The parent class is also known as a base class, superclass*/

//CHILD CLASS
/*It’s an extended class;
The class that inherits the other class is known as subclass
The child class is also known as an extended class, derived class, subclass*/

class parent_class;
  bit [31:0] addr;
endclass

class child_class extends parent_class;
  bit [31:0] data;
endclass

module inheritence;
  initial begin
    child_class c = new();
    c.addr = 10;
    c.data = 20;
    $display("Value of addr = %0d",c.addr);
    $display("Value of data = %0d",c.data);
  end
endmodule
