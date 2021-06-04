module sevSegDecoder (
        input   logic [3:0] d,
        output  logic [6:0] s
    );

    always_comb
        case(d)              //gfe_dcba
            0:          s = 7'b100_0000;
            1:          s = 7'b111_1001;
            2:          s = 7'b010_0100;
            3:          s = 7'b011_0000;
            4:          s = 7'b001_1001;
            5:          s = 7'b001_0010;
            6:          s = 7'b000_0010;
            7:          s = 7'b111_1000;
            8:          s = 7'b000_0000;
            9:          s = 7'b001_0000;
            10:         s = 7'b010_0000;
            11:         s = 7'b000_0011;
            12:         s = 7'b100_0110;
            13:         s = 7'b010_0001;
            14:         s = 7'b000_0110;
            15:         s = 7'b000_1110;
            default:    s = 7'b111_1111;
        endcase
endmodule