module ULA#(parameter WIDTH = 4)(
        input                       sel     ,
        input logic [WIDTH-1:0]     input_a ,      
                                    input_b ,
        output logic [WIDTH-1:0]    output_s
);
    assign output_s = sel ? input_a - input_b : input_a + input_b;
endmodule