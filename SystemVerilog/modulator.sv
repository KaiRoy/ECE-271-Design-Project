module modulator #(parameter N = 24, M = 22)
	(
		input logic clk, reset,
		output logic out,
	);
	
	logic [N-1:0] q
	
	Counter count (
		.clk(clk),
		.reset(reset),
		.q(q)
	);
	
	synchronizer sync (
		.clk(clk),
		.d(q[22]),
		.q(out)
	);