/* design*/

module adder(
  input  [3:0] a	,
  input  [3:0] b	,
  output [6:0] c  		); 
    
  assign c = a + b;

endmodule


`include "interface.sv"
`include "test.sv"

module tbench_top;
   
  //creatinng instance of interface
  intf i_intf();
  
  //Testcase instance
  test t1(i_intf);  
  
  //DUT instance, interface signals are connected to the DUT ports
  adder DUT (
    .a(i_intf.a),
    .b(i_intf.b),
    .c(i_intf.c)
   );
  
endmodule


interface intf();
  
  //declaring the signals
  logic [3:0] a;
  logic [3:0] b;
  logic [6:0] c;
  
endinterface

`include "environment.sv"
program test(intf i_intf);
  
  //declaring environment instance
  environment env;
  
  initial begin
    //creating environment
    env = new(i_intf);
       
    //calling run of env
    env.run();
  end
endprogram



class environment;
  
  //virtual interface
  virtual intf vif;
  
  //constructor
  function new(virtual intf vif);
    //get the interface from test
    this.vif = vif;
  endfunction
  
  //run task
  task run;
    vif.a = 6;
    vif.b = 4;
    
    $display("Value of a = %0d, b = %0d",vif.a,vif.b);
    #5;
    $display("Sum of a and b, c = %0d",vif.c);
    $finish;
  endtask
endclass
