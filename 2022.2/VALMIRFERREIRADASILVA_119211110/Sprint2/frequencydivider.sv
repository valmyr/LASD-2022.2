// f = 1/T ->  f Mhz
module frequencydivider#(parameter mytime = 1)(
    input logic  clk,
                 rst,
    output logic myclk
);
    parameter [26:0] flag_ovf_mytime = mytime*(25000000);
    logic [26:0] counter;
    always_ff @(posedge clk) begin
        if(rst) begin 
            counter <= 0;
            myclk = 0;
        end 
        else if(counter == flag_ovf_mytime)begin
            myclk = ~myclk;
            counter <= 0;
        end
        else counter <= counter + 1;
    end
endmodule