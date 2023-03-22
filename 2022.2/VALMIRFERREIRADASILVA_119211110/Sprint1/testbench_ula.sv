`include "./ULA.sv"
module tb;


    parameter           WIDTH      = 4;
    logic               sel        ;
    logic   [WIDTH-1:0] input_a    ,
                        input_b    ,
                        output_s   ;
    logic ovf;
    logic [WIDTH-1:0] test_pass, test_fail;
    ULA #(      .WIDTH(     WIDTH       ))
    minha_ula_instancia_01(
                .input_a    (       input_a     ),
                .input_b    (       input_b     ),
                .sel        (       sel         ),
                .ovf        (       ovf         ),
                .output_s   (       output_s    )
    );

    task expect_task(   input numb_test                     ,
                        input [WIDTH-1:0] expect_output_s   ,
                        input expect_ovf                    
    );
        begin
            if(expect_output_s == output_s && ovf == expect_ovf)
                test_pass+=1;
            else begin
                test_fail+=1;
                $display("fail");
                $display("%b    %b     %b   %b", output_s,expect_output_s, ovf, expect_ovf);
            end 
            // $display(" %b     : %b",expect_output_s,output_s);
        end
    endtask

    initial begin
        $dumpfile("graphic.vcd");
        $dumpvars(0,minha_ula_instancia_01);
        $display("expected  : obtained");
        #1{sel,input_a,input_b} = 9'b0_0011_0001; #1 expect_task( 1 ,4'd4   ,   0)  ;// 03+01 = 4
        #1{sel,input_a,input_b} = 9'b0_1111_0010; #1 expect_task( 1 ,4'd17  ,   1)  ;// 15+02 = 17 ovfw 
        #1{sel,input_a,input_b} = 9'b1_0111_0011; #1 expect_task( 1 ,4'd4   ,   0)  ;// 07+02 = 4
        #1{sel,input_a,input_b} = 9'b1_0111_1000; #1 expect_task( 1 ,4'd15  ,   0)  ;// 07-08 = -1 ffff

    end
endmodule