`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/15 17:55:02
// Design Name: 
// Module Name: sim_D_ff
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


module sim_D_ff();
    reg CLK;
    wire Q,QN;
    reg D,EN,RST;
    D_ff D_ff_1(Q,QN,D,EN,RST,CLK);
    initial fork
        D=1;EN=0;RST=0;CLK=0;
        #10 begin
            RST=1;
        end
        #50 begin
            RST=0;
        end
        forever #55 EN=~EN;
        forever #20 D=~D;
        forever #25 CLK=~CLK;
    join
endmodule
