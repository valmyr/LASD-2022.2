`include "./ULA.sv"
module tb;


    parameter           WIDTH      = 4;
    logic               sel        ;
    logic   [WIDTH-1:0] input_a    ,
                        input_b    ,
                        output_s   ;
    logic [WIDTH-1:0] test_pass, test_fail;
    ULA #(      .WIDTH(     WIDTH       ))
    minha_ula_instancia_01(
                .input_a    (       input_a     ),
                .input_b    (       input_b     ),
                .sel        (       sel         ),
                .output_s   (       output_s    )
    );

    task expect_task(   input numb_test,
                        input [WIDTH-1:0] expect_output_s
    );
        begin
            if(expect_output_s == output_s)
                test_pass+=1;
            else begin
                test_fail+=1;
                $display("fail");
                $display("expected : obtained");
                $display(" %b     : %b",expect_output_s,output_s);
            end 
        
        end
    endtask

    initial begin
        $dumpfile("graphic.vcd");
        $dumpvars(0,minha_ula_instancia_01);
        #1{sel,input_a,input_b} = 9'b0_0011_0001; #1 expect_task( 1,4'd4  )  ;// 03+01 = 4
        #1{sel,input_a,input_b} = 9'b0_1111_0010; #1 expect_task( 1,4'd17 )  ;// 15+02 = 17 ovfw 
        #1{sel,input_a,input_b} = 9'b1_0111_0011; #1 expect_task( 1,4'd4  )  ;// 07+02 = 4
        #1{sel,input_a,input_b} = 9'b1_0111_1000; #1 expect_task( 1,4'd15 )  ;// 07-08 = -1 ffff

    end
endmodule