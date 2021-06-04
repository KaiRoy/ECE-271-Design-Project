module DiceMachine 
    (
        input logic clk. reset, button,
        input logic [5:0] switch,
        output logic [6:0] seg0, seg1, seg2, seg3, seg4, seg5
    );

    logic int_en;
    logic [23:0] PRNGtoDC;

endmodule