module control_unit#(parameter WIDTH = 6)(
        input logic  [WIDTH-1:0] OP         ,
                                 Funct      ,
        output logic             Jump       ,
                                 MemtoReg   ,
                                 MemWrite   ,
                                 Branch     ,
                                 ULASrc     ,
                                 RegDst     ,
                                 RegWrite   ,
        output logic [2:0]       ULAControl

);
    always_comb begin
        casex({OP,Funct})
            12'b000000_100000:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_010_0_0_0_0;
            12'b000000_100010:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_110_0_0_0_0;
            12'b000000_100100:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_000_0_0_0_0;
            12'b000000_100101:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_001_0_0_0_0;
            12'b000000_100111:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_011_0_0_0_0;
            12'b000000_101010:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_1_0_111_0_0_0_0;
            12'b100011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_0_1_010_0_0_1_0;
            12'b101011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_1_010_0_1_x_0;
            12'b000100_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_0_110_1_0_x_0;
            12'b001000_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_0_1_010_0_0_0_0;
            12'b000010_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_x_xxx_x_0_x_1;
            12'b100011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_0_1_010_0_0_1_0;
            12'b101011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_1_010_0_1_x_0;
            12'b000100_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_0_110_1_0_x_0;
            12'b001000_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b1_0_1_010_0_0_0_0;
            12'b000010_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_x_x_xxx_x_0_x_1;
		    default          :{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jump} = 10'b0_0_0_000_0_0_0_0;
        endcase
    end
endmodule