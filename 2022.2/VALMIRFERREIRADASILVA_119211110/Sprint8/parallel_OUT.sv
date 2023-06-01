module parallel_out(
    input  logic       clk     ,
    input  logic       we      ,
    input  logic [7:0] regData ,
    input  logic [7:0] address ,
    output logic [7:0] dataOut ,     
    output logic       wren    
);
    wire w_fioA, w_fioB                         ;
    logic [7:0] register                        ;

    initial register = 0                        ;

    assign  w_fioA = (address == 8'hFF) ? 1: 0  ;
    assign  w_fioB = we & w_fioA                ;
    assign  wren   = we & w_fioB                ;

    always_ff @(posedge clk) begin
        register <= w_fioB ? regData: register;
    end
    assign dataOut = register;
endmodule