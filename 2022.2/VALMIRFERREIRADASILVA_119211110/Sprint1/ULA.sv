module ULA#(parameter WIDTH = 4)(
        input logic                 sel     ,
        input logic [WIDTH-1:0]    input_a ,      
                                   input_b ,
        output logic [WIDTH-1:0]   output_s,
        output logic               ovf     
);
    assign {ovf,output_s} = sel ? input_a - input_b : input_a + input_b;
endmodule