`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/22 15:25:55
// Design Name: 
// Module Name: hex8seg_EGo1
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


// 8位8段EG01数码管驱动模块
module hex8seg_EGo1(
    input wire [3:0] S,         // 输入数字（0-F）
    output wire [7:0] seg_cs_pin,      // 位选信号（1有效）
    output reg [7:0] seg_data_0_pin    // 段选信号
);


    assign seg_cs_pin = 8'b0000_0001;


    always @(*) case(S)
    0  : seg_data_0_pin = 8'b0011_1111;  // 0
    1  : seg_data_0_pin = 8'b0000_0110;  // 1
    2  : seg_data_0_pin = 8'b0101_1011;  // 2
    3  : seg_data_0_pin = 8'b0100_1111;  // 3
    4  : seg_data_0_pin = 8'b0110_0110;  // 4
    5  : seg_data_0_pin = 8'b0110_1101;  // 5
    6  : seg_data_0_pin = 8'b0111_1101;  // 6
    7  : seg_data_0_pin = 8'b0000_0111;  // 7
    8  : seg_data_0_pin = 8'b0111_1111;  // 8
    9  : seg_data_0_pin = 8'b0110_1111;  // 9
    'hA : seg_data_0_pin = 8'b0111_0111; // A
    'hB : seg_data_0_pin = 8'b0111_1100; // b
    'hC : seg_data_0_pin = 8'b0011_1001; // C
    'hD : seg_data_0_pin = 8'b0101_1110; // d
    'hE : seg_data_0_pin = 8'b0111_1000; // E
    'hF : seg_data_0_pin = 8'b0111_0001; // F
    default : seg_data_0_pin = 8'b0111_1111; // "-"（默认）
    endcase

endmodule
