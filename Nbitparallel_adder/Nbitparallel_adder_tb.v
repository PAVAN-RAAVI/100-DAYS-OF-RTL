////////////Test Bench/////////////////////////////////////////////////

module Nbit_tb();
wire [3:0]oc;
 
wire [3:0]out;
 
reg [3:0]in1;
 
reg [3:0]in2;
 
reg ic;
 
main m(.oc(oc), .in1(in1), .in2(in2), .out(out), .ic(ic) );
 
initial
 
begin
 
$monitor(" ",in1," ",in2," ",out," ",oc[3]);
 
in1=4'b0010;  ////////it is 2 according to binary number//////////////////
 
in2=4'b0001;   ////////it is 1 by adding we get the output as 3//////////////////
ic=0;
end
endmodule
