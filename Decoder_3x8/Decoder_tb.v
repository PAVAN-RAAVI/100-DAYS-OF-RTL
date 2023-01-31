/////////////////////////////Test bench//////////////////////////////


module decoder_tb();
reg a,b,c;
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder_3x8 uut (a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
initial begin
// Initialize Inputs
a = 0;b = 0;c = 0;#100;
a = 0;b = 0;c = 1;#100;
a = 0;b = 1;c = 0;#100;
a = 0;b = 1;c = 1;#100;
a = 1;b = 0;c = 0;#100;
a = 1;b = 0;c = 1;#100;
a = 1;b = 1;c = 0;#100;
a = 1;b = 1;c = 1;
end
endmodule
