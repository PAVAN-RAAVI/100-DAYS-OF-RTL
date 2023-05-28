module string_datatype;
   //declaration
   string s1 = "Hello World";
   string s2 = {"Hi,"," ",s1};
   bit[31:0]b= 128;
   string s3 = b; // sets 128 to s3
 initial begin
     //display values
     $display("String 1 s1 = %0s",s1);
     $display("String 2 s2 = %0s",s2);
     $display("String 3 s3 = %0d bit b = %0d",s3,b);
   end
 endmodule
