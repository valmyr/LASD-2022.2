module ULA#(parameter WIDTH = 4)(
        input                 sel     ,
        input  [WIDTH-1:0]     input_a ,      
                              input_b ,
        output [WIDTH-1:0]    output_s,
        output                ovf     
);
    assign {ovf,output_s} = sel ? input_a - input_b : input_a + input_b;
endmodule