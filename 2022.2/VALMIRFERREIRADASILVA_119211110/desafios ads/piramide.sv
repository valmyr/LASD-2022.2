module piramide(
    input  logic clk,
                 rst,
    input  logic [3:0] max,
    output logic [3:0] outputM_
);

    logic S, R, qLatch;
    logic [3:0] outputM;
    assign      S = (outputM== 15); // ~ set value latch
    assign      R = (outputM ==       0); // Reset value latch
    always_comb begin : Latch_RS
        case({S,R})
            1:qLatch = 0;
            2:qLatch = 1;
            default:qLatch = qLatch;
        endcase
    end
    always_ff @(posedge clk ) begin : FFD
        if(rst) begin
            outputM <= 0;
            qLatch  <= 0;
        end
        else
            outputM <= (qLatch) ?  (outputM - 1):(outputM + 1);
    end
    assign      outputM_ = outputM  < max ? outputM : max;
endmodule