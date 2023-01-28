
/////////////Behavioural Level model////////////////////////////


module mux_81(out,D0,D1,D2,D3,D4,D5,D6,D7,S0,S1,S2);
output reg out ;
input wire D0,D1,D2,D3,D4,D5,D6,D7,S0,S1,S2;
always@(*)
begin
case(S0&S1&S2)
3'b000: out = D0;
3'b001: out = D1;
3'b010: out = D2;
3'b011: out = D3;
3'b100: out = D4;
3'b101: out = D5;
3'b110: out = D6;
3'b111: out = D7;
default: out=1'b0 ;
endcase
end
endmodule
