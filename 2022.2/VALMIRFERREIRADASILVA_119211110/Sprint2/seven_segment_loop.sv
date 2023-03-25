`include "count_M10.sv"
module seven_segment_loop(
    input  logic clk,
    output logic [6:0] pinoutdisplay7segment
);
    logic [6:0] map_leds[6:0];
    logic [3:0] counter_value;
    logic rst;
    assign map_leds[ 0] = 7'b0000001;
    assign map_leds[ 1] = 7'b0000010;
    assign map_leds[ 2] = 7'b0000100;
    assign map_leds[ 3] = 7'b0001000;
    assign map_leds[ 4] = 7'b0010000;
    assign map_leds[ 5] = 7'b0100000;
    assign map_leds[ 6] = 7'b1000000;
    count_M10 my_counter(
        .clk            (   clk            ),
        .rst            (   rst             ),
        .counter_value  (   counter_value   )
    );
    assign rst = (counter_value == 7) ? 1 : 0;
    assign pinoutdisplay7segment = map_leds[counter_value];
endmodule