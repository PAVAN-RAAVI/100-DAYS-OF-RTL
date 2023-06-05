module nonblocking_assignment;

  //variables declaration
  int a,b;
  int x,y;

  initial begin  //initial block will get executed at starting of simulation
    $display("-----------------------------------------------------------");
    //initializing a and b
    a = 10;
    b = 15;
 
    //displaying initial value of a and b
    $display("\tBefore Assignment :: Value of a is %0d",a);
    $display("\tBefore Assignment :: Value of b is %0d",b);
 
    a <= b;
    b <= 20;
    
  
    $display("\tAfter  Assignment :: Value of a is %0d",a);
    $display("\tAfter  Assignment :: Value of b is %0d",b);
    $display("----------------------------------------------------------");
  end
   initial begin
    //initializing a and b
    a = 10;
    b = 15;
    
    x <= a + b;
    y <= a + b + x;
  end

  final begin  //final block will get executed at end of simulation
    $display("-------------------------------------------------------------");
    $display("\tEnd of Simulation :: Value of a is %0d",a);
    $display("\tEnd of Simulation :: Value of b is %0d",b);
    $display("-------------------------------------------------------------");
     $display("--------------------------------------------------------------");
    $display("\tValue of x is %0d",x);
    $display("\tValue of y is %0d",y);
    $display("-------------------------------------------------------------");

  end
endmodule
