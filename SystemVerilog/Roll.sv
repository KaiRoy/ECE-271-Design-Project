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

	 assign en = &x1;
	
    initial begin
        for (int i = 0; i < N; i++)
			   LED[((N-1)-i)] = (button & x1[i]);
    end

endmodule