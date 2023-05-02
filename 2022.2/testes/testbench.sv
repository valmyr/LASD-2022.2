// Code your testbench here
// or browse Examples

`include "./design.sv"
module tb;
  
  logic [7:0] din,dout;
  logic d,rst;
  p p1(
    .din(din),
    .d(d),
    .dout(dout),
    .rst(rst)
  );
  initial rst = 1;
      always #1 rst = ~ rst;  
  initial begin
    $dumpfile("a.vcd");
    $dumpvars(0,p1);
      din = 1111_1110;#1
      din = 0000_0000;#1
      din = 1111_1111;#1
      din = 0000_0000;#1
      din = 1111_1110;#1
      din = 0000_0000;#1
      din = 1111_1111;#1
      din = 0000_0000;#1
      #1$finish;
  end
endmodule