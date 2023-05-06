class hello;
  function new();
  endfunction
  
  function void print_hello();
    $display("Hello World! Welcome to 100_days-RTL\n");
  endfunction
endclass

module hello_tb();
  hello h1;
  initial begin
    h1=new();
    h1.print_hello();
    $finsih();
  end
endmodule
