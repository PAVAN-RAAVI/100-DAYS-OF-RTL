/*Assining the enum variable*/


module enum_datatype;
  //declaration
  typedef enum int { red=0, green=1, blue=4, yellow, white=6, black=9 } Colors;
  
  Colors color;
  
  initial begin
    /* for now we are casting the enum variable*/
    
    $cast(color,4);
    $display("Colors  ::  Value of %0s is \t= %0d",color.name(),color);
  end
endmodule
