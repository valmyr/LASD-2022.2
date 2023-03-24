`include "./count_M10.sv"
module tb;
    logic clk,
          rst;
    logic [3:0] counter_value;
    logic [3:0] pass_test, fail_test;
    count_M10 my_count(

        .clk           (   clk                      ),
        .rst           (   rst                      ),
        .counter_value (        counter_value       )
    );
    task expect_output_counter(
        input [3:0] counter_value_exp
    ); 

        if(counter_value_exp == counter_value) pass_test+=1;
        else fail_test+=1;
        $display("   %b    : %b     ", counter_value,counter_value_exp);

    endtask
    always #1 clk = ~clk;
    initial begin
        clk = 0;
        pass_test = 0;
        fail_test = 0;
        $dumpfile("count_M10.vcd");
        $dumpvars(0,my_count);
        $display("obtained : expected");
        @(posedge clk) rst = 1; #1 expect_output_counter(0);
        @(posedge clk) rst = 0; #1 expect_output_counter(1);
        @(posedge clk) rst = 0; #1 expect_output_counter(2);
        @(posedge clk) rst = 0; #1 expect_output_counter(3);
        @(posedge clk) rst = 0; #1 expect_output_counter(4);
        @(posedge clk) rst = 0; #1 expect_output_counter(5);
        @(posedge clk) rst = 0; #1 expect_output_counter(6);
        @(posedge clk) rst = 0; #1 expect_output_counter(7);
        @(posedge clk) rst = 0; #1 expect_output_counter(8);
        @(posedge clk) rst = 0; #1 expect_output_counter(9);
        @(posedge clk) rst = 1; #1 expect_output_counter(0);
        @(posedge clk) rst = 0; #1 expect_output_counter(1);


        

        $display("\n-------------status test-------------\n");
        $display("pass | fail");
        $display(" %d  |  %d ", pass_test, fail_test);
        #20 $finish;
    end
endmodule