module regdeslo(
    input logic  clk,
                 rst,
                 in_serial,
    input  logic [1:0] op,
    input  logic [7:0] in_paralelo,
    output logic [7:0] outreg
);
    logic [7:0] reg_int;
    always@* case(op)
        0:reg_int = outreg;
        1:reg_int = reg_int << in_serial;
        2:reg_int = reg_int >> in_serial;
        3:reg_int = in_paralelo;
    endcase

    always_ff @( posedge clk ) begin 
        outreg <= rst ? 0: reg_int;
    end
endmodule
