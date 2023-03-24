module count_M10(

    input   clk,
            rst,
    output [3:0] counter_value
);
    always_ff(posedge clk)begin
        if(rst) counter_value = 0;
        else if(counter_value == 10) counter_value =  0;
        else                         counter_value += 1; 
    end
endmodule