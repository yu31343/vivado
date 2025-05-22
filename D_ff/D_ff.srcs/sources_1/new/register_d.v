`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/16 23:25:00
// Design Name: 
// Module Name: register_d
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

// module D_ff(Q,QN,D,EN,RST,CLK);
//   output reg Q,QN;
//   input D;
//   input EN,RST,CLK;

//   always @(posedge CLK)
//   begin
//     if(RST)
//     begin
//       Q<=1'b0;QN<=1'b1;
//     end
//     else if(EN)
//     begin
//       Q<=D;QN<=~D;
//     end
//   end
// endmodule


module register_d(Q, D, OE, CLK,EN,RST);
    parameter N = 8;     // 8位
    output [N-1:0] Q;    // 三态输出总线
    input [N-1:0] D;     // 输入数据总线
    input OE, CLK,EN,RST;   // OE:控制信号 CLK:时钟信号
                            // EN:触发器使能信号 RST:触发器复位信号
    wire[N-1:0] Q_ff;
    // 实例化8个已实现的D触发器D_ff
    D_ff dff [N-1:0] (
        .Q(Q_ff),      // D触发器输出向量
        .QN(),         // QN悬空
        .D(D),         // 输入数据向量
        .EN(EN),       // 使能信号（共用）
        .RST(RST),     // 复位信号（共用）
        .CLK(CLK)      // 时钟信号（共用）
    );
    
    //三态输出控制
    assign Q = OE ? {N{1'bz}} : Q_ff;   //OE高电平输出高阻态
                                        //否则Q输出触发器输出
endmodule
