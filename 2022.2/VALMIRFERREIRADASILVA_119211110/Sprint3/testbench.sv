`include "./RegisterFile.sv"
module tb;
    parameter WIDTH = 8;
    logic           clk;
    logic           we3;
    logic [2:0]     ra1,
                    ra2,
                    wa3;
    logic [WIDTH-1:0] rd1,
                    rd2,
                    wd3;
    RegisterFile #(  .WIDTH     (       WIDTH      ))
    meu_registrador(    
                    .clk        (       clk        ),
                    .we3        (       we3        ),
                    .ra1        (       ra1        ),
                    .ra2        (       ra2        ),
                    .wa3        (       wa3        ),
                    .rd1        (       rd1        ),
                    .wd3        (       wd3        )
    );

    always #1 clk = ~clk;
    initial begin
        $dumpfile   ("Graphic_Register.vcd");
        $dumpvars   (0,meu_registrador     );   
        clk = 0;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b0_000_000_000_00001010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_000_000_001_10001010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_001_000_010_10101010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_010_001_011_11001010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_011_010_100_11101010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_100_011_101_10101010;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_101_100_110_10001110;
        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_000_101_111_11111111;

        #1@(negedge clk) {we3,ra1,ra2,wa3,wd3} = 18'b1_011_011_011_10001010;


        #20$finish;
    end
endmodule