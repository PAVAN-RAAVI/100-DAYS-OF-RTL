/*The real type is converted into int type. i.e multiplication of two real numbers results in real value, the result is converted into int and then assigned to a variable of int type.
Note: the casting is applied to expression her
*/
module casting;
  
  real r_a;
  int  i_a;
  
  initial begin
    
    r_a = (3.2 * 2.7);
    
    //real to integer conversion
    i_a = int'(3.2 * 2.7); // i_a = int'(r_a);
    
    $display("real value is %f",r_a);
    $display("int  value is %d",i_a);
  end
endmodule
