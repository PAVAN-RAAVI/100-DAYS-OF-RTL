///ASERTION///////////////


module asertion_ex;
  bit clk,a,b;
  
  //clock generation
  always #5 clk = ~clk; 
  
  //generating 'a'
  initial begin 
    a=1;
    b=1;
    #15 b=0;
    #10 b=1;
        a=0;
    #20 a=1;
    #10;
    $finish;
  end
  
  //Immediate assertion
  always @(posedge clk) assert (a && b);
    
  //wave dump
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
