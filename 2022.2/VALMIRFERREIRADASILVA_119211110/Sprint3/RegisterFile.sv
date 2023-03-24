module decoder(
    input  logic ena          ,
    input  logic [2:0] sel    ,
    output logic [7:0] address
);
    always_comb casex({ena,sel})
        4'b0xxx:address = 8'b00000000;
        4'b1000:address = 8'b00000001;
        4'b1001:address = 8'b00000010;
        4'b1010:address = 8'b00000100;
        4'b1011:address = 8'b00001000;
        4'b1100:address = 8'b00010000;
        4'b1101:address = 8'b00100000;
        4'b1110:address = 8'b01000000;
        4'b1111:address = 8'b10000000;
    endcase
endmodule
module mux8to1(
        input logic  [2:0] sel                  ,
        input logic  [7:0] mux_input_data[7:0]  ,
        output logic [7:0] mux_output_data
);
    logic [7:0] address;
    decoder decoder_inst01(
        .ena        (   1'b1     ),
        .sel        (   sel     ),
        .address    (   address )
    );
    assign mux_output_data = mux_output_data[address];
endmodule


module RegisterFile#(parameter WIDTH = 8)(
    input logic             clk,
                            we3,
    input logic [2:0]       ra1,
                            ra2,
                            wa3,
    output logic [WIDTH-1:0] rd1,
                            rd2,
                            wd3   

);
    logic [7:0] mem [7:0];
    logic [7:0] address;
    decoder decoder_inst02(
        .ena        (    we3        ),
        .sel        (    wa3        ),
        .address    (    address    )
    );
    mux8to1 mux8to1_inst02(
        .sel                (    ra1    ),
        .mux_input_data     (    mem    ),
        .mux_output_data    (    rd1    )
    );

    mux8to1 mux8to1_inst03(
        .sel                (    ra2    ),
        .mux_input_data     (    mem    ),
        .mux_output_data    (    rd2    )
    );
    always_ff@(posedge clk)begin
        if(we3 && address != 0) mem[address] <= wd3;
    end
endmodule

