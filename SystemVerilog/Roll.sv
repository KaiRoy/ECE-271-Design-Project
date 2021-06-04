module Roll #(parameter N = 10)
    (
        input logic button, clk,
        output logic en,
        output logic [N-1:0] LED
    );

    logic [N-1:0] x1;

    ShiftRegister SR (
        .clk(clk),
        .reset(~button),
        .sin(button),
        .q(x1)
    );

    for (genvar i = 0; i < N; i++) begin
        LED[(N-1)-i] = button & x1[i];
    end

    assign en = &x1;
endmodule