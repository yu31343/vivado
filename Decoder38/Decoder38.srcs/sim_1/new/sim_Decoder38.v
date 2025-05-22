`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/15 17:45:15
// Design Name:
// Module Name: sim_Decoder38
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


module sim_Decoder38();
  reg[3:1] A;
  wire[7:0] Y0;

  Decoder38 test(.A(A),.Y(Y0));
  initial begin
    A=3'b000;
    repeat (10) #10 A=A+1;
  end
endmodule
