`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/15 17:51:07
// Design Name:
// Module Name: D_ff
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


module D_ff(Q,QN,D,EN,RST,CLK);
  output reg Q,QN;
  input D;
  input EN,RST,CLK;

  always @(posedge CLK)
  begin
    if(RST)
    begin
      Q<=1'b0;QN<=1'b1;
    end
    else if(EN)
    begin
      Q<=D;QN<=~D;
    end
  end
endmodule
