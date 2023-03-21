`include "./ULA_mod.sv"
module tb;


    parameter           WIDTH      = 4;
    logic   [1:0]       sel        ;
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
        test_fail = 0;
        test_pass = 0;
        $dumpfile("graphic.vcd");
        $dumpvars(0,minha_ula_instancia_01);
        #1{sel,input_a,input_b} = 10'b00_0011_0001; #1 expect_task( 1,4'd4  )  ;// 03+01 = 4
        #1{sel,input_a,input_b} = 10'b00_1111_0010; #1 expect_task( 1,4'd17 )  ;// 15+02 = 17 ovfw 
        #1{sel,input_a,input_b} = 10'b01_0111_0011; #1 expect_task( 1,4'd4  )  ;// 07+02 = 4
        #1{sel,input_a,input_b} = 10'b01_0111_1000; #1 expect_task( 1,4'd15 )  ;// 07-08 = -1 ffff
        #1{sel,input_a,input_b} = 10'b10_0100_0001; #1 expect_task( 1,4'd2  )  ;// 4>>1  = 2
        #1{sel,input_a,input_b} = 10'b10_0010_0010; #1 expect_task( 1,4'd0  )  ;// 2>>2  = 0
        #1{sel,input_a,input_b} = 11'b10_1111_0100; #1 expect_task( 1,4'd0  )  ;// 1<<1  = 2
        $display(" pass    | fail");
        $display("   %d    |   %d ",test_pass,test_fail);
    end
endmodule