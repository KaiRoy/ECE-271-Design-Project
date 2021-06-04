module parser #(parameter N = 6)
		(input logic [N-1:0]d,
		output logic [3:0] ones, tens, hundreds, thousands, ten_thousands, hundred_thousands);
	assign ones = d % 6 + 1;
	assign tens = (d / 6) % 6 + 1;
	assign hundreds = (d / (6 ** 2)) % 6 + 1;
	assign thousands = (d / (6 ** 3)) % 6 + 1;
	assign ten_thousands = (d / (6 ** 4)) % 6 + 1;
	assign hundred_thousands = (d / (6 ** 5)) % 6 + 1;
endmodule 
