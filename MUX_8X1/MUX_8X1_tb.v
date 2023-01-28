///////////TESH BENCH//////////////////////////////////////////

module mux_tb();
wire out;
reg D0,D1,D2,D3,D4,D5,D6,D7,S0,S1,S2;
mux_81 cut(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .S0(S0), .S1(S1), .S2(S2), .out(out));

initial
begin
D0=1'b0; D1=1'b0; D2=1'b0 ; D3=1'b0; D4=1'b0; D5=1'b0; D6=1'b0; D7=1'b0; S0=1'b0; S1=1'b0; S2=1'b0;
#500 $finish;
end
always #10 D0=~D0;
always #20 D1=~D1;
always #30 D2=~D2;
always #40 D3=~D3;
always #50 D4=~D4;
always #60 D5=~D5;
always #70 D6=~D6;
always #80 D7=~D7;
always #90 S0=~S0;
always #100 S1=~S1;
always #11 S2=~S2;
always@(D0 or D1 or D2 or D3 or D4 or D5 or D6 or D7 or S0 or S1 or S2)
$monitor("At time=%t, Output=%d", $time, out);
endmodule
