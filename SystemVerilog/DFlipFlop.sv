module DFlipFlop #(parameter N = 7)
    (
    input logic clk, reset, en,
    input logic [N-1:0] d,
    output logic [N-1:0] q
    );

    always_ff @(posedge clk, posedge reset)
        if (reset)
            q <= 7'b111_1111;
        else if (en)
            q <= d;
endmodule