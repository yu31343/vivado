`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/15 17:41:37
// Design Name:
// Module Name: Decoder38
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


module Decoder38(A,Y);
  input [2:0] A;
  output reg [7:0] Y;
  integer i;

  always @(A)
  begin
    Y=8'b1111_1111;
    for(i=0;i<=7;i=i+1)
      if(A==i)
        Y[i]=0;
      else
        Y[i]=1;
  end
endmodule
