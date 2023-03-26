`default_nettype none //Comando para desabilitar declaração automática de wires
`include "./LCD_TEST2.v"
`include "./LCD_Controller.v"
`include "./Sprint1/ULA.sv"
`include "./Sprint2/decod_hexa2_7seg.sv"
`include "./Sprint2/seven_segment_loop.sv"
`include "./Sprint2/frequencydivider.sv"
`include "./Sprint2/count_M10.sv"
`include "./Sprint3/RegisterFile.sv"
`include "./Sprint4/Ula.sv"
`include "./Sprint5/ControlUnit.sv"
`include "./Sprint5/InstrMemory.sv"
`include "./Sprint5/PC.sv"


module Mod_Teste (
//Clocks
input CLOCK_27, CLOCK_50,
//Chaves e Botoes
input [3:0] KEY,
input [17:0] SW,
//Displays de 7 seg e LEDs
output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
output [8:0] LEDG,
output [17:0] LEDR,
//Serial
output UART_TXD,
input UART_RXD,
inout [7:0] LCD_DATA,
output LCD_ON, LCD_BLON, LCD_RW, LCD_EN, LCD_RS,
//GPIO
inout [35:0] GPIO_0, GPIO_1
);
assign GPIO_1 = 36'hzzzzzzzzz;
assign GPIO_0 = 36'hzzzzzzzzz;
assign LCD_ON = 1'b1;
assign LCD_BLON = 1'b1;
wire [7:0] w_d0x0, w_d0x1, w_d0x2, w_d0x3, w_d0x4, w_d0x5,
w_d1x0, w_d1x1, w_d1x2, w_d1x3, w_d1x4, w_d1x5;
LCD_TEST MyLCD (
.iCLK ( CLOCK_50 ),
.iRST_N ( KEY[0] ),
.d0x0(w_d0x0),.d0x1(w_d0x1),.d0x2(w_d0x2),.d0x3(w_d0x3),.d0x4(w_d0x4),.d0x5(w_d0x5),
.d1x0(w_d1x0),.d1x1(w_d1x1),.d1x2(w_d1x2),.d1x3(w_d1x3),.d1x4(w_d1x4),.d1x5(w_d1x5),
.LCD_DATA( LCD_DATA ),
.LCD_RW ( LCD_RW ),
.LCD_EN ( LCD_EN ),
.LCD_RS ( LCD_RS )
);
//---------- modifique a partir daqui  --------
//------------------Sprint1---------------------
//---------- Unidade Lógica Aritmétricas -------
/*
ULA minha_ula(
    .sel        (       SW      [17]     ),
    .input_a    (       SW      [3:0]    ),
    .input_b    (       SW      [7:4]    ),
    .output_s   (       LEDR    [3:0]    ),
    .ovf        (       LEDG    [0]      )
);
*/
//----------------------------------------------
//------------------Sprint2---------------------


//------------------Sprint3---------------------
//-----------------Banco de Registradores-------

// RegisterFile meu_registrador(
// 			.clk		(		KEY[    1]	),
// 			.we3		(		SW [   17]	),
// 			.wa3		(		SW [16:14]	),
// 			.ra1		(		SW [13:11]	),
// 			.ra2		(		SW [10: 8] 	),
// 			.wd3		(		SW	[7	: 0]),
// 			.rd1		(		w_d0x0[7:0]	),
// 			.rd2		(		w_d0x1[7:0]	)
// );

//------------------Sprint4---------------------
//-------Banco de Registradores + ULA 5_OP-------

// logic [7:0] w_rd1SrcA, w_rd2, w_SrcB, w_ULAResultWd3;
// RegisterFile meu_registrador(
// 			.clk		(		KEY[    1]				),
// 			.we3		(		1'b1					),
// 			.wa3		(		SW [16:14]				),
// 			.ra1		(		SW [13:11]				),
// 			.ra2		(		3'b010	 				),
// 			.wd3		(		SW	[7	: 0]			),
// 			.rd1		(		w_rd1SrcA				),
// 			.rd2		(		w_rd2     				)
// );
// ula minha_ula_5o(
// 			.ScrA		(		w_rd1SrcA				),
// 			.ScrB		(		w_SrcB               	),
// 			.ULAControl	(		SW[10:8]				),
// 			.Z			(		LEDG[0]					),
// 			.ULAResult  (		w_ULAResultWd3			)
// );
// assign w_SrcB = SW[17] ? 8'h07 : w_rd2;

// --------------------------------------------------

//------------------Sprint5--------------------------
//-------            CPU v0.1            ------------

// --------------------------------------------------
endmodule