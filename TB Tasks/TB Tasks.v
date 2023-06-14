module task_example;
  int a, b;
  int out;
    
  task tk_add(int a, b, output int out);
    a = a+b; //value of a is updated, it won't update global variables a and b
    out = a;
  endtask
  
  task automatic tk_add1( ref int a, b, output int out);
    a = a+b; // expects compilation error when subroutine tries to modify argument value.
    out = a;
  endtask
  
  task static tk_add2 (int a, b, output int out );
    a = a+b;
    out = a;
  endtask
  
  initial begin
    a = 10;
    b = 5;
    tk_add(a,b, out);
    $display(" a = %0d  b = %0d out = %0d", a, b,out);// a = 10  b = 5  out = 15
    tk_add1(a,b, out);
    $display("a = %0d  b = %0d out = %0d",a, b,out);//a = 15  b = 5     out = 15
    tk_add2(a,b, out);
    $display("a = %0d  b = %0d  out = %0d ", a, b,out);// a = 15 b = 5  out = 20
  end
  endmodule
