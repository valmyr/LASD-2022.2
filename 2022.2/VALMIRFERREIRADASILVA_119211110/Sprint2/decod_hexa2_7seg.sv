module decod_hexa2_7seg(
    input logic [3:0]  bincode,
    output logic [6:0] pinoutdisplay7segment
);
    logic [6:0] map_leds[15:0];
    assign map_leds[ 0] = 7'b111_1110;
    assign map_leds[ 1] = 7'b011_0000;
    assign map_leds[ 2] = 7'b110_1101;
    assign map_leds[ 3] = 7'b111_1001;
    assign map_leds[ 4] = 7'b011_0011;
    assign map_leds[ 5] = 7'b101_1011;
    assign map_leds[ 6] = 7'b101_1111;
    assign map_leds[ 7] = 7'b111_0000;
    assign map_leds[ 8] = 7'b111_1111;
    assign map_leds[ 9] = 7'b111_1011;
    assign map_leds[10] = 7'b111_0111;
    assign map_leds[11] = 7'b001_1111;
    assign map_leds[12] = 7'b100_1110;
    assign map_leds[13] = 7'b011_1101; 
    assign map_leds[14] = 7'b100_1111;
    assign map_leds[15] = 7'b100_0111;
    always_comb pinoutdisplay7segment = ~map_leds[bincode];
endmodule