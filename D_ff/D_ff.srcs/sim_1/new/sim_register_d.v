`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/16 23:36:49
// Design Name: 
// Module Name: sim_register_d
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sim_register_d;
    reg OE,CLK,EN,RST;
    reg  [7:0] D ;
    wire [7:0] Q ;
    register_d test (.OE(OE), .CLK(CLK), .D(D), .Q(Q),.EN(EN),.RST(RST));
    initial
    fork
        OE = 1;
        CLK = 0;
        EN=1;RST=0;
        D = 8'b1010_1110;
        #20 OE=~OE;
        #160 RST=~RST;
    join
    always #10 CLK=~CLK;
endmodule

