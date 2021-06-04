module mux2 (parameter N = 7, M = 7'b111_1111)
    (input  logic [N-1:0]   d1,
    input   logic           s,
    output  logic [N-1:0]   y)
    );

    assign y = s ? d1 : M;
endmodule