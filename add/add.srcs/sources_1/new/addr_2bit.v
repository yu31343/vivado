`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/22 15:08:10
// Design Name: 
// Module Name: addr_2bit
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


module addr_2bit(S,Co,A,B,Ci);
    input [1:0] A,B;
    input Ci;
    output [1:0] S;
    output Co;
    wire C;

    fulladder FA0(S[0],C,A[0],B[0],Ci),
              FA1(S[1],Co,A[1],B[1],C);
endmodule
