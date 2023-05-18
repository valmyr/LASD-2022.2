module control_unit#(parameter WIDTH = 6)(
        input logic  [WIDTH-1:0] OP         ,
                                 Funct      ,
        output logic             Jr         ,
                                 Jal        ,
               logic[1:0]        MemtoReg   ,
                                 RegDst     ,
               logic             MemWrite   ,
                                 Branch     ,
                                 ULASrc     ,
                                 RegWrite   ,
        output logic [2:0]       ULAControl

);
    always_comb begin
        casex({OP,Funct})
            12'b000000_100000:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_010_0_00_0_0_0;
            12'b000000_100010:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_110_0_00_0_0_0;
            12'b000000_100100:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_000_0_00_0_0_0;
            12'b000000_100101:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_001_0_00_0_0_0;
            12'b000000_100111:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_011_0_00_0_0_0;
            12'b000000_101010:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_01_0_111_0_00_0_0_0;
            12'b000000_001000:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_00_0_000_0_00_0_0_0;//jrl

            12'b100011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_00_1_010_0_00_1_0_0;
            12'b101011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_1_010_0_01_x_0_0;
            12'b000100_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_0_110_1_00_x_0_0;
            12'b001000_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_00_1_010_0_00_0_0_0;
            12'b000010_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_x_xxx_x_00_x_0_1;//
            12'b100011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_00_1_010_0_00_1_0_0;
            12'b101011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_1_010_0_01_x_0_0;
            12'b000100_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_0_110_1_00_x_0_0;
            12'b001000_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b1_00_1_010_0_00_0_0_0;
            12'b000010_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_xx_x_xxx_x_00_x_0_1;//
            12'b000011_xxxxxx:{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_00_0_000_0_00_0_0_0;


		    default          :{RegWrite,RegDst,ULASrc,ULAControl,Branch,MemWrite,MemtoReg,Jr,Jal} = 13'b0_00_0_000_0_00_0_0_0;
        endcase
    end
endmodule