module RegisterFile#(parameter WIDTH = 8)(
    input logic              clk,
                             rst,
                             we3,
    input logic [4:0]        ra1,
                             ra2,
                             wa3,
    input logic  [WIDTH-1:0] wd3,
    output logic [WIDTH-1:0] rd1,
                             rd2,
    output logic [WIDTH-1:0] rg0,
                             rg1,
                             rg2,
                             rg3,
                             rg4,
                             rg5,
                             rg6,
                             rg7  
);
    logic [WIDTH-1:0] mem[WIDTH-1:0];
    initial mem[0]=0;
    always@(posedge clk)begin 
		  if(!rst)begin
            mem[0] <= 0;
            mem[1] <= 0;
            mem[2] <= 0;
            mem[3] <= 0;
            mem[4] <= 0;
            mem[5] <= 0;
            mem[6] <= 0;
            mem[7] <= 0;
            end
		  else if(we3 && wa3 != 0) mem[wa3] <= wd3;    
    end
    always_comb begin
        rg0 = mem[0];
        rg1 = mem[1];
        rg2 = mem[2];
        rg3 = mem[3];
        rg4 = mem[4];
        rg5 = mem[5];
        rg6 = mem[6];
        rg7 = mem[7];
    end
    assign rd1 = mem[ra1];
    assign rd2 = mem[ra2];
endmodule

