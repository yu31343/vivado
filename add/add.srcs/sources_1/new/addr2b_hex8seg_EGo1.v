`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/22 15:20:14
// Design Name:
// Module Name: addr2b_hex8seg_EGo1
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


module addr2b_hex8seg_EGo1(
        input wire Ci,
        input wire [1:0] A,B,
        output wire [1:0] S,
        output wire Co,
        output wire [7:0] seg_cs_pin,
        output wire [7:0] seg_data_0_pin);
    addr_2bit addr2(S, Co, A, B, Ci);

    hex8seg_EGo1 he({'b0, Co, S}, seg_cs_pin, seg_data_0_pin);
endmodule
