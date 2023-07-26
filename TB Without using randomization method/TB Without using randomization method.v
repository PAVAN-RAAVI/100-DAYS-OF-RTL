/*Without using randomization method or rand keyword(modifiers), generate an array of unique values.*/


module test;
  int unsigned a[10];
  initial begin
    foreach (a[i])
      begin
        a[i]=i*i;
      end
    a.shuffle();
    $display("a=%p",a);
  end
endmodule
