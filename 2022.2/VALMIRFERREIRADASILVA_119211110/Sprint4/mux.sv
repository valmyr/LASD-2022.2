module mux2_1(
    input  logic     sel,
    input  logic     [7:0] inA, inB,
    output logic     [7:0] out
);
    assign out = sel ? inA : inB;
endmodule 