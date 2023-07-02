//Access Control(Local)

class parent_class;
  local bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;//15+10=25
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass

module encapsulation;
  initial begin
    parent_class p_c = new(15);
       p_c.tmp_addr = 20;  //Accesing local variable outside the class Now it is accesing local varaiable with in the class only
    p_c.display();
  end
endmodule

///////Access Control(Protected)

class parent_class;
  protected bit [31:0] tmp_addr;
  
  function new(bit [31:0] r_addr);
    tmp_addr = r_addr + 10;
  endfunction

  function display();
    $display("tmp_addr = %0d",tmp_addr);
  endfunction
endclass

class child_class extends parent_class;
  function new(bit [31:0] r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    tmp_addr++;
  endfunction  
endclass

//   module
module encapsulation;
  initial begin
    child_class  c_c = new(10);
    
    c_c.incr_addr();  //Accessing protected variable in extended class
    c_c.display();
  end
endmodule
