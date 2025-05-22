`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/15 18:08:50
// Design Name:
// Module Name: sim_register
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


module sim_register ();
    reg OE,CLK;
    reg  [7:0] D ;
    wire [7:0] Q ;
    register test (.OE(OE), .CLK(CLK), .D(D), .Q(Q));
    initial
    fork
        OE = 1;
        CLK = 0;
        D  = 8'b1010_1110;
        #20 OE=~OE;
    join
    always #10 CLK=~CLK;
endmodule
