///////////Tesh bench/////////////////

module full_tb();
reg a,b,cin;
wire s,c;
full_adder uut(a,b,cin,s,c);
initial begin
a=0;b=0;cin=0;#100
a=0;b=0;cin=1;#100
a=0;b=1;cin=0;#100
a=0;b=1;cin=1;#100
a=1;b=0;cin=0;#100
a=1;b=0;cin=1;#100
a=1;b=1;cin=0;#100
a=1;b=1;cin=1;
end
endmodule
