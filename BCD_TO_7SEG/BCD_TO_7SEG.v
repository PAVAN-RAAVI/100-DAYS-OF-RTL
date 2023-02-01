
////////////////Behavioural level//////////////////////////////
module BCD_7SEG(bcd,seg);
     input [3:0] bcd;
     output [7:0] seg;
     reg [7:0] seg;
    always @(bcd)
    begin
        case (bcd)
            0: seg = 8'b11000000;   //when bcd = 0
                   1: seg = 8'b11111001;   //when bcd = 1
                   2: seg = 8'b10100100;   //when bcd = 2
                   3: seg = 8'b10110000;   //when bcd = 3
                   4: seg = 8'b10011001;   //when bcd = 4
                   5: seg = 8'b10010010;   //when bcd = 5
                   6: seg = 8'b10000010;   //when bcd = 6
                   7: seg = 8'b11111000;   //when bcd = 7
                   8: seg = 8'b10000000;   //when bcd = 8
                   9: seg = 8'b10010000;   //when bcd = 9
                   default: seg=8'b11111111;
        endcase
    end
endmodule
