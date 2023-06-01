module parallel_in(
    input  logic [7:0] address,
    input  logic [7:0] memData,
    input  logic [7:0] dataIn,
    output logic [7:0] regData
);

    assign regData = (address == 8'hFF) ? dataIn: memData;
	 
endmodule