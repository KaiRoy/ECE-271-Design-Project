module DisplayController #(parameter N = 4, M = 7)
    (
        input logic s, clk, reset
        input logic [N-1:0] d,
        output logic [M-1:0] q
    );

    logic [M-1:0] x1;
    logic [M-1:0] x2;

    //Seven Segment Display Decoder
    .sevSegDecoder SSD (
        .d(d),
        .s(x1)
    );

    //7-bit Mux
    .mux2 Mux (
        .d1(x1),
        .s(x2)
    );

    //7-bit D Flip-Flop
    .DFF DFF (
        .clk(clk),
        .reset(reset),
        .d(x2),
        .q(q)
    );
endmodule