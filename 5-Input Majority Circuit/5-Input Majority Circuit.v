
///////////Gate Level////////////////////////


module majority_Circuit(input[5:1]x,output p);
wire [9:0] w;
// instantiate with And Gates
and a1(w[0],x[3],x[4],x[5]);
and a2(w[1],x[2],x[4],x[5]);
and a3(w[2],x[2],x[3],x[5]);
and a4(w[3],x[2],x[4],x[3]);
and a5(w[4],x[1],x[4],x[5]);
and a6(w[5],x[1],x[3],x[5]);
and a7(w[6],x[1],x[4],x[3]);
and a8(w[7],x[2],x[1],x[5]);
and a9(w[8],x[2],x[4],x[1]);
and a10(w[9],x[2],x[1],x[3]);
or o1(p,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9]);
endmodule
