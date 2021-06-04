module DiceMachine 
    (
        input logic clk. resetButton, button,
        input logic [5:0] switch,
        output logic [9:0] LED,
        output logic [6:0] seg0, seg1, seg2, seg3, seg4, seg5
    );

    logic en, clk_5Hz, reset;
    logic [16:0] PRNGtoP;
    logic [3:0] PtoDC0, PtoDC1, PtoDC2, PtoDC3, PtoDC4, PtoDC5;

    assign reset = ~resetButton;

    //Clock Modulator *CREATE FUNCTION*


    //Roll Function
    Roll RF (
        .button(button),
        .clk(clk_5Hz),
        .en(en),
        .LED(LED)
    );
    
    //Pseudo-Random Number Generator
    prng PRNG (
        .clk(clk),
        .reset(reset),
        .q(PRNGtoP)
    );
    
    //Parser
    parser P (
        .d(PRNGtoP),
        .ones(PtoDC0),
        .tens(PtoDC1),
        .hundreds(PtoDC2),
        .thousands(PtoDC3),
        .ten_thousands(PtoDC4),
        .hundred_thousands(PtoDC5)
    );

    //Display Controllers
    DisplayController DC0 (
        .s(switch[0]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC0),
        .q(seg0)
    );
    DisplayController DC1 (
        .s(switch[1]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC1),
        .q(seg1)
    );
    DisplayController DC2 (
        .s(switch[2]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC2),
        .q(seg2)
    );
    DisplayController DC3 (
        .s(switch[3]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC3),
        .q(seg3)
    );
    DisplayController DC4 (
        .s(switch[4]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC4),
        .q(seg4)
    );
    DisplayController DC5 (
        .s(switch[5]),
        .clk(clk),
        .reset(reset),
        .en(en),
        .d(PtoDC5),
        .q(seg5)
    );
endmodule