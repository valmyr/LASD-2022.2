module ULA#(parameter WIDTH = 4)(
        input        [1:0]          sel     ,
        input logic  [WIDTH-1:0]    input_a ,      
                                    input_b ,
        output logic [WIDTH-1:0]    output_s,
        output                      ovf     
);
    assign {ovf,output_s} = sel == 0 ? input_a  + input_b:
                            sel == 1 ? input_a  - input_b:
                            sel == 2 ? input_a >> input_b:
                                                          input_a << input_b;
endmodule