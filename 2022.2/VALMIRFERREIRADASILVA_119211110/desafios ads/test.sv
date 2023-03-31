`include "./piramide.sv"
module tb;

    logic clk, rst;
    logic [3:0] max ,
                outp;
    
    piramide instp(
            .clk    (   clk  ),
            .max    (   max  ),
            .outputM_(   outp ),
            .rst    (   rst )

    );
    always #1clk = ~clk;
    initial begin
        clk = 0;

        $dumpfile("pi.vcd");
        $dumpvars (0,instp);
        @(negedge clk) {rst,max} =  5'b10111;
        @(negedge clk) {rst,max} =  5'b00100;


        #100 $finish;
    end
    
endmodule