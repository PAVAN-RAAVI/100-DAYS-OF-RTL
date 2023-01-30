
/////////////////Design flow level////////////////////////////////

module Nbit_paraadder(a,b,ic,o,oc);
input a,b,ic;
output o,oc;
assign o = a^b^ic;
assign oc = a&b|b&ic|ic&a;
endmodule
module main(in1,in2,ic,out,oc);
input [3:0]in1;
 
input [3:0]in2;
 
input ic;
 
output [3:0]out;
 
output [3:0]oc;
 
Nbit_paraadder fa1(in1[0],in2[0],ic,out[0],oc[0]);
 
Nbit_paraadder fa2(in1[1],in2[1],oc[0],out[1],oc[1]);
 
Nbit_paraadder fa3(in1[2],in2[2],oc[1],out[2],oc[2]);
Nbit_paraadder fa4(in1[3],in2[3],oc[2],out[3],oc[3]);
 
endmodule
