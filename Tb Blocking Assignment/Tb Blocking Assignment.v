module blocking_assignment;
  //variables declaration
  int a,b;
  int x,y;
  initial begin  
    $display("----------------------------------------------------------");
    //initializing a and b
    a =5 ;
    b = 4;
   
    //displaying initial value of a and b
    $display("\tBefore Assignment :: Value of a is %0d",a);
    $display("\tBefore Assignment :: Value of b is %0d",b);
   
    a = b;
    b =10 ;
    $display("\tAfter  Assignment :: Value of a is %0d",a);
    $display("\tAfter  Assignment :: Value of b is %0d",b);
    $display("--------------------------------------------------------");
  end
     initial begin  
    //initializing a and b
    a =20 ;
    b = 30;
   
    x = a + b;
    y = a + b + x;
   
    $display("--------------------------------------------------------------");
    $display("\tValue of x is %0d",x);
    $display("\tValue of y is %0d",y);
    $display("-------------------------------------------------------------");  
  end    
endmodule
