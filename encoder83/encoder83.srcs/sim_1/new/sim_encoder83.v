`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/05/15 17:30:11
// Design Name:
// Module Name: sim_encoder83
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


module sim_encoder83();
  reg[7:0] x;
  wire[2:0] y;

  encoder83_case test(.I(x),.Y(y));
  initial
  begin
    x=1;
    repeat (7) # 10 x = x*2;
    #10 x=0;
    repeat (130) #5 x=x+1;
  end
endmodule
