`include "./regdeslo.sv"
module tb;
    logic [20:0] caso_de_testes[5:0];
    logic [30:0] operac[5:0];
    logic [3:0] test_fail,
                test_pass;
    logic       clk         ,
                rst         ,
                in_serial   ;
    logic [1:0] op          ;
    logic [7:0] in_paralelo ,
                outreg      ;
    regdeslo inst1regdesloc(
        .clk        (       clk         ),
        .rst        (       rst         ),
        .in_serial  (       in_serial   ),
        .op         (       op          ),
        .in_paralelo(       in_paralelo ),
        .outreg     (       outreg      )
    );
    initial clk = 0;
    always #1 clk = ~clk;

    task expected_out_test(
        input [7:0] valor_esperado
    );
        if(valor_esperado == outreg)
            test_pass += 1;
        else
            test_fail +=1;
        $display("%b %b, status op %s :%s",valor_esperado,outreg,operac[op],valor_esperado == outreg ? "pass":"fail");
        // $display("%d",outreg);
    endtask
    initial begin
        test_pass = 0;
        test_fail = 0;
        operac[0] = "NOP";
        operac[1] = "SHL";
        operac[2] = "SHR";
        operac[3] = "LOAD";

        $readmemb("casos_de_testes.txt",caso_de_testes);
        $dumpfile("myReg.vcd");
        $dumpvars(0,inst1regdesloc);
        $display("esperado, obtido");
        for(integer i =0; i < 4; i++)begin
            @(negedge clk) {in_paralelo,in_serial,op,rst} = caso_de_testes[i][12:0]; #2expected_out_test(caso_de_testes[i][20:12]);
        end
    end
    initial #100 $finish;

endmodule