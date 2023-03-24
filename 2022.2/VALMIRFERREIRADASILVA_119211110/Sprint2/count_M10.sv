module count_M10(
    input logic  clk,
            rst,
    output logic [3:0] counter_value
);
    always_ff@(posedge clk)begin
        if(rst) counter_value = 0;
        else if(counter_value == 10) counter_value =  0;
        else                         counter_value += 1; 
    end
endmodule