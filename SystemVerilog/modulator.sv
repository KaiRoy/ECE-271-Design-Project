module modulator #(parameter N = 24, M = 22)
	(
		input logic clk, reset,
		output logic out,
	);
	
	logic [N-1:0] q
	
	counter count (
		.clk(clk),
		.reset(reset),
		.q(q)
	);
	
	Sync sync (
		.clk(clk),
		.d(q[M]),
		.q(out)
	);
