module PC#(parameter WIDTH = 8)(
    input  logic             clk         ,
                             rst         ,
    input  logic [WIDTH-1:0] PCin        ,
    output logic [WIDTH-1:0] PCout         
);
    always_ff@(posedge clk or negedge rst) PCout <= (rst == 0)? 0 : PCin;
endmodule