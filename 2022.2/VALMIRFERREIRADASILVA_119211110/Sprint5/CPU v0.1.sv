`include "./Sprint5/ControlUnit.sv"
`include "./Sprint5/InstrMemory.sv"
`include "./Sprint5/PC.sv"

module CPUv010(
    input clk
);
    logic [7 :0] w_PC    ;
    logic [7 :0] w_PCp1  ;
    logic [31:0] w_Inst  ;
    logic        wa3     ;

    // w_PCp1 = ( ?? ) w_PCp1 : 1'b1;

    always_comb w_PCp1 += 1;
    PC myPC(
                .clk        (       clk         ),
                .address    (       w_PC        ),
                .RD         (       w_PCp1      ),
    );

    InstrMemory myInstrMemory(
                .address    (   w_PC    ),
                .RD         (   w_Inst  )
    );
    ULAControl myULAControl(
                .OP     (   w_Inst[31:26]       ),
                .Funct  (   w_Inst[ 5: 0]       ),
                .ra1    (   w_Inst[25:21]       ),
                .ra2    (   w_Inst[20:16]       )
    );
endmodule