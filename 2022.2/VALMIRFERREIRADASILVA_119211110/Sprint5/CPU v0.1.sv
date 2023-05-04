// `include "./ControlUnit.sv"
// `include "./InstrMemory.sv"
// `include "./PC.sv"
// `include "../Sprint4/Ula.sv"
// `include "../Sprint3/RegisterFile.sv"
module CPUv010(
    input clk, rst
);
    logic [7 :0] w_PC           ;
    logic [7 :0] w_PCp1         ;
    logic [31:0] w_Inst         ;
    logic [3 :0] w_wa3          ;
    logic        w_RegDst       ;
    logic [7 :0] w_SrcB         ;
    logic        w_ULASrc       ;
    logic [7 :0] w_rd1SrcA      ;
    logic [2 :0] w_ULAControl   ;
    logic [7 :0] w_ULAResultWd3 ;
    logic [7 :0] w_rd2          ;
    logic        w_RegWrite     ;
    logic        w_Branch       ;
    logic        w_Jump         ;
    logic        w_MemWrite     ;
    logic        w_MemtoReg     ;
    assign LEDR[9:0] ={w_RegDst,w_ULASrc,w_ULAControl,w_Branch,w_MemWrite,w_MemtoReg,w_Jump}; 
    assign w_wa3  = ( w_RegDst ) ? w_Inst[20:16] : w_Inst[15:11];
    assign w_SrcB = ( w_ULASrc ) ? w_rd2         : w_Inst[7 : 0];
    assign w_PCp1 = w_PC + 1;
    PC myPC(
                .clk        (        clk                ),
                .PCin       (        w_PCp1             ),
                .PCout      (        w_PC               )
    );

    InstrMemory myInstrMemory(
                .address    (       w_PC                ),
                .RD         (       w_Inst              )
    );
    control_unit myULAControl(
                .OP         (       w_Inst[31:26]       ),
                .Funct      (       w_Inst[ 5: 0]       ),
                .RegWrite   (       w_RegWrite          ),
                .RegDst     (       w_RegDst            ),
                .ULASrc     (       w_ULASrc            ),
                .ULAControl (       w_ULAControl        ),
                .Jump       (       w_Jump              ),
                .MemWrite   (       w_MemWrite          ),
                .
    );
    RegisterFile  myRegisterFile    (
                .rst        (       rst                 )
                .clk        (       clk                 ),
                .ra1        (       w_Inst[25:21]       ),//pq ra1 e o e ra2 recebem 5 bits ?
                .ra2        (       w_Inst[20:16]       ),
                .we3        (       w_RegWrite          ),
                .wa3        (       w_wa3               ),
                .wd3        (       w_ULAResultWd3      ),
                .rd1        (       w_rd1SrcA           ),
                .rd2        (       w_rd2               ),
                .rg0        (       w_d0x0              ),
                .rg1        (       w_d0x1              ),
                .rg2        (       w_d0x2              ),
                .rg3        (       w_d0x3              ),
                .rg4        (       w_d1x0              ),
                .rg5        (       w_d1x1              ),
                .rg6        (       w_d1x2              ),
                .rg7        (       w_d1x3              )

    );
    ula myULA   (

                .ScrB       (       w_SrcB              ),
                .ScrA       (       w_rd1SrcA           ),
                .ULAControl (       w_ULAControl        ),
                .ULAResult  (       w_ULAResultWd3      )
    );
endmodule