module prng#(parameter N = 17)
				(input logic clk, reset, 
				 output logic [N-1:0] q);
	
	logic [N-1:0] random;
	logic [N-1:0] next;
	logic feedback;
                        
	always @(posedge clk, posedge reset)
		begin 
			if (reset)
				begin
					random <= 1;  
        
			end     
		else if (clk == 1'b1)
			random <= next;
	end

	
	assign feedback = random[16] ^ random[15] ^ random[9] ^ random[3] ^ random[0];

	assign next = {feedback, random[N-1:1]};

	assign q = random;

endmodule  
