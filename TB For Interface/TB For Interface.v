//--------------------------------------------
//    design
//--------------------------------------------

module adder(
  input  [3:0] a	,
  input  [3:0] b	,
  output [6:0] c  		); 
    
  assign c = a + b;

endmodule

/* Interface MOdule*/

interface intf;
  
  //declaring the signals
  logic [3:0] a;
  logic [3:0] b;
  logic [6:0] c;
  
endinterface

/*Test Bench Module*/


//including interface
`include "interface.sv"

module tbench_top;
   
  //creatinng instance of interface
  intf i_intf();
  
  //DUT instance, interface signals are connected to the DUT ports
  adder DUT (
    .a(i_intf.a),
    .b(i_intf.b),
    .c(i_intf.c)
   );
  
  initial begin //{
    i_intf.a = 6;
    i_intf.b = 4;
    
    $display("Value of a = %0d, b = %0d",i_intf.a,i_intf.b);
    #5;
    $display("Sum of a and b, c = %0d",i_intf.c);
  end //}

endmodule
