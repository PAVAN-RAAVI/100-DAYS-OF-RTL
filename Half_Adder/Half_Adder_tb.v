////////////test bech///////////////

module half_tb();
reg a,b;
wire s,c;
half_adder uut(a,b,s,c);
initial begin
a=0;b=0;#100
a=0;b=1;#100
a=1;b=0;#100
a=1;b=1;
end
endmodule
