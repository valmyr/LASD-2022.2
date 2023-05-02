// Code your design here
module p(
  input logic [7:0] din,
  input logic rst,
  output logic  d,
  output logic [7:0] dout
);
  always@(*) begin
    if(rst) dout = din;
    else begin
      d = dout[0];
      dout = {1'b0,dout[7:1]};
    end
  end

endmodule