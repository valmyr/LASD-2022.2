module ula#(parameter WIDTH = 8)(
    input logic   [2      :0] ULAControl,
    input logic   [WIDTH-1:0] ScrA      ,
                              ScrB      ,
    output logic  [WIDTH-1:0] ULAResult ,
    output logic              Z         
);
    always_comb 
	  case(ULAControl)
             0: ULAResult  = ScrA & ScrB     ;
             1: ULAResult  = ScrA | ScrB     ;
             2: ULAResult = ScrA + ScrB      ;
             6: ULAResult = ScrA + ~ScrB + 1 ;
             7: ULAResult = ScrA < ScrB      ;
				 default ULAResult = 0;
    endcase
    assign Z = (ULAControl == 0);
endmodule