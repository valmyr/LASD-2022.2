//memória de instruções da cpu, apenas leitura.
module InstrMemory#(parameter WIDTH = 8)(
    input logic  [WIDTH-1:0] address     ,
    output logic [31     :0] RD
);
    parameter number_of_instructions = 5; 
    logic [31:0] machine_code [number_of_instructions-1:0];
    assign machine_code[0] = 32'b001000_00000_00001_00000_00000_000011; //ADDi $1,$0,3 -> 3+0
    assign machine_code[1] = 32'b001000_00000_00010_00000_00000_001001; //ADDi $1,$0,3 -> 3+0
    assign machine_code[2] = 32'b000000_00001_00010_00010_00000_100000; //ADD  $2,$1,$2 -> $2 += $1
    assign machine_code[3] = 32'b000000_00001_00010_00011_00000_100100; //ADD $3,$1,$2 -> $3 = $1 + $2
    assign machine_code[4] = 32'b000000_00001_00010_00100_00000_100101; //ADD $1,$0,3 -> 3+0
    assign RD = machine_code[address];
endmodule