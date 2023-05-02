module RegisterFile#(parameter WIDTH = 8)(
    input logic             clk,
                            rst,
                            we3,
    input logic [2:0]       ra1,
                            ra2,
                            wa3,
    input logic  [WIDTH-1:0] wd3,
    output logic [WIDTH-1:0] rd1,
                            rd2  

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
    assign rd1 = mem[ra1];
    assign rd2 = mem[ra2];
endmodule

