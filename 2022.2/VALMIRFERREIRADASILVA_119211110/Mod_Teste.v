`default_nettype none //Comando para desabilitar declaraÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â§ÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â£o automÃƒÆ’Ã†â€™Ãƒâ€ Ã¢â‚¬â„¢ÃƒÆ’Ã¢â‚¬Â ÃƒÂ¢Ã¢â€šÂ¬Ã¢â€žÂ¢ÃƒÆ’Ã†â€™ÃƒÂ¢Ã¢â€šÂ¬Ã…Â¡ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â¡tica de wires
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
//`include "./Sprint5/CPU v0.1.sv"


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
//---------- Unidade lógica Aritmética -------
// ULA minha_ula(
//     .sel        (       SW      [17]     ),
//     .input_a    (       SW      [3:0]    ),
//     .input_b    (       SW      [7:4]    ),
//     .output_s   (       LEDR    [3:0]    ),
//     .ovf        (       LEDG    [0]      )
// );

//----------------------------------------------
//------------------Sprint2---------------------
// wire w_clk_1hz, w_clk_12hz;
// wire [3:0] w_counter_value;
// assign HEX3[0:6] = SW[6:0];
// assign LEDG[0] = w_clk_1hz;
//  decod_hexa2_7seg mydecod_inst01(
//          .bincode                (   SW  [11:8]    ),
//          .pinoutdisplay7segment  (   HEX0[0: 6]    )
    
//  );
// decod_hexa2_7seg mydecod_inst02(
//         .bincode                (   w_counter_value ),
//         .pinoutdisplay7segment  (   HEX1[0: 6]      )
// );


// count_M10 mycount_M10_inst01(
//     .clk            (   w_clk_1hz           ),
//     .rst            (   KEY[3]              ),
//     .counter_value  (    w_counter_value    )    
// );
// frequencydivider  #(     .flag_ovf_mytime ( 25000000 ))
// myfreq_inst01(
//     .clk    (   CLOCK_50   ),
//     .rst    (   KEY[1]     ),
//     .myclk  (   w_clk_1hz    )   
// );

// frequencydivider #(     .flag_ovf_mytime ( 4166667 ))
// myfreq_inst02(
//     .clk    (   CLOCK_50   ),
//     .rst    (   KEY[1]     ),
//     .myclk  (   w_clk_12hz    )   
// );

// seven_segment_loop myloop(

//     .clk    (   w_clk_12hz   ),
//     .pinoutdisplay7segment  ( HEX4[0: 6]  )
// );
//------------------Sprint3---------------------
//-----------------Banco de Registradores-------

// RegisterFile meu_registrador(
// 	.clk		(		KEY[    1]	    ),
// 	.we3		(		SW [   17]	    ),
// 	.wa3		(		SW [16:14]	    ),
// 	.ra1		(		SW [13:11]	    ),
// 	.ra2		(		SW [10: 8] 	    ),
// 	.wd3		(		SW	[7	: 0]    ),
// 	.rd1		(		w_d0x0[7:0]	    ),
//  .rst        (       KEY[    2]      ),
// 	.rd2		(		w_d0x1[7:0]	    )
// );
// decod_hexa2_7seg displayWD3_LSB(
//         .bincode                (   SW[3:0]     ),
//         .pinoutdisplay7segment  (   HEX0        )
// );

// decod_hexa2_7seg displayWD3_MSB(
//         .bincode                (   SW[7:4]     ),
//         .pinoutdisplay7segment  (   HEX1        )
// );
//------------------Sprint4-----------------------
//-------Banco de Registradores + ULA 5_OP-------

// logic [7:0] w_rd1SrcA, w_rd2, w_SrcB, w_ULAResultWd3;
// RegisterFile meu_registrador(
// 	.rst 		(			1			),
// 	.clk		(		KEY[    1]		),
// 	.we3		(		1'b1			),
// 	.wa3		(		SW [16:14]		),
// 	.ra1		(		SW [13:11]		),
// 	.ra2		(		3'b010	 		),
// 	.wd3		(		SW	[7	: 0]	),
// 	.rd1		(		w_rd1SrcA		),
// 	.rd2		(		w_rd2     		)
// );
// ula minha_ula_5o(
// 	.ScrA		(		w_rd1SrcA		),
// 	.ScrB		(		w_SrcB          ),
// 	.ULAControl	(		SW[10:8]		),
// 	.Z			(		LEDG[0]			),
// 	.ULAResult  (		w_ULAResultWd3	)
// );
// assign LEDG[1] = KEY[1]				;
// assign w_d0x0 = w_rd1SrcA			;
// assign w_d1x0 = w_rd2				;
// assign w_d1x1 = w_SrcB				;
// assign w_d0x4 = w_ULAResultWd3		;
// assign w_SrcB = SW[17] ? 8'h07 : w_rd2;

// --------------------------------------------------

//------------------Sprint5--------------------------
//-------            CPU v0.1            ------------

    wire [7 :0] w_PC           ;
    wire [7 :0] w_PCp1         ;
    wire [31:0] w_Inst         ;
    wire [4 :0] w_wa3          ;
    wire        w_RegDst       ;
    wire [7 :0] w_SrcB         ;
    wire        w_ULASrc       ;
    wire [7 :0] w_rd1SrcA      ;
    wire [2 :0] w_ULAControl   ;
    wire [7 :0] w_ULAResultWd3 ;
    wire [7 :0] w_rd2          ;
    wire        w_RegWrite     ;
    wire        w_Branch       ;
    wire        w_Jump         ;
    wire        w_MemWrite     ;
    wire        w_MemtoReg     ;


    assign LEDR[9:0] ={w_RegDst,w_ULASrc,w_ULAControl,w_Branch,w_MemWrite,w_MemtoReg,w_Jump}; 
    assign w_wa3  = ( w_RegDst ) ? w_Inst[15:11] : w_Inst[20:16];
    assign w_SrcB = ( w_ULASrc ) ? w_Inst[7 : 0]         : w_rd2;
    assign w_PCp1 = w_PC + 1;

    PC myPC(
				.rst		(		 KEY[1]				),
                .clk        (        KEY[0]             ),
                .PCin       (        w_PCp1             ),
                .PCout      (        w_PC               )
    );

    InstrMemory myInstrMemory(
                .address    (       w_PC                ),
                .RD         (       w_Inst              )
    );
    control_unit myULAControl(
                .OP         (       w_Inst[31:26]       ),
                .Funct      (       w_Inst[ 5: 0]       ),
                .RegWrite   (       w_RegWrite          ),
                .RegDst     (       w_RegDst            ),
                .ULASrc     (       w_ULASrc            ),
                .ULAControl (       w_ULAControl        ),
                .Jump       (       w_Jump              ),
                .MemWrite   (       w_MemWrite          )
    );
    RegisterFile  myRegisterFile    (
				.rst		(		 KEY[1]				),
                .clk        (        KEY[0]             ),
                .ra1        (       w_Inst[25:21]       ),//pq ra1 e o e ra2 recebem 5 bits ?
                .ra2        (       w_Inst[20:16]       ),
                .we3        (       w_RegWrite          ),
                .wa3        (       w_wa3               ),
                .wd3        (       w_ULAResultWd3      ),
                .rd1        (       w_rd1SrcA           ),
                .rd2        (       w_rd2               ),
                .rg0        (       w_d0x0              ),
                .rg1        (       w_d0x1              ),
                .rg2        (       w_d0x2              ),
                .rg3        (       w_d0x3              ),
                .rg4        (       w_d1x0              ),
                .rg5        (       w_d1x1              ),
                .rg6        (       w_d1x2              ),
                .rg7        (       w_d1x3              )

    );
    ula myULA   (

                .ScrB       (       w_SrcB              ),
                .ScrA       (       w_rd1SrcA           ),
                .ULAControl (       w_ULAControl        ),
                .ULAResult  (       w_ULAResultWd3      )
    );

// --------------------------------------------------
endmodule