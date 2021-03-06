module ShiftRegister #(parameter N = 10)
    (
        input logic clk, reset, sin,
        output logic [N-1:0] q,
        output logic sout
    );

    always_ff @(posedge clk, posedge reset)
        if (reset)  q <= 0;
        else        q <= {q[N-2:0], sin};
    
    assign sout = q[N-1];
endmodule