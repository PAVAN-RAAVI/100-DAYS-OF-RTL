///////////Tesh bench of Full Subtractor////////////////

module full_sub_tb();
reg a,b,bin;
wire diff,bo;
full_sub uut(a,b,bin,diff,bo);
initial begin
a=0;b=0;bin=0;#100
a=0;b=0;bin=1;#100
a=0;b=1;bin=0;#100
a=0;b=1;bin=1;#100
a=1;b=0;bin=0;#100
a=1;b=0;bin=1;#100
a=1;b=1;bin=0;#100
a=1;b=1;bin=1;
end
endmodule
