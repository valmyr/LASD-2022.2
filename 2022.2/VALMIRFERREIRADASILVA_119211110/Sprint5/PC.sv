module PC#(parameter WIDTH = 8)(
    input  logic             clk         ,
    input  logic [WIDTH-1:0] PCin        ,
    output logic [WIDTH-1:0] PCout         
);
    always_ff@(posedge clk) PCout <= PCin;
endmodule