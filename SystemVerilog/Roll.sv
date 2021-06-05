module Roll #(parameter N = 10)
    (
        input logic button, clk,
        output logic en,
        output logic [N-1:0] LED
    );

    logic [N-1:0] x;

    ShiftRegister SR (
        .clk(clk),
        .reset(~button),
        .sin(button),
        .q(x)
    );

    assign en = &x;
	
    assign LED[0] = x[0];
    assign LED[1] = x[1];
    assign LED[2] = x[2];
    assign LED[3] = x[3];
    assign LED[4] = x[4];
    assign LED[5] = x[5];
    assign LED[6] = x[6];
    assign LED[7] = x[7];
    assign LED[8] = x[8];
    assign LED[9] = x[9];

endmodule