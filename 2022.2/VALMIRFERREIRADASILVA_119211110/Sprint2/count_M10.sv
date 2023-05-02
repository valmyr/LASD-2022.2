module count_M10(
    input logic  clk,
            rst,
    output logic [3:0] counter_value_
);
    logic [3:0] counter_value;
    always@(posedge clk ||  rst )begin
        if(rst == 1) counter_value <= 0;
        if(counter_value == 9) counter_value <= 0;
        else                         counter_value <= counter_value + 1; 
    end
    assign counter_value_ = counter_value;
endmodule
