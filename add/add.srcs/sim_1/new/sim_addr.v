`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/22 14:56:46
// Design Name: 
// Module Name: sim_addr
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


module sim_addr();
    reg A,B;
    reg Ci;
    wire S;
    wire Co;
    initial begin
        A=1'b0;
        B=1'b0;
        Ci=0;
    end
    always  begin
        #20 Ci=1'b1;
        #20 B=B+1'b1;Ci=~Ci;
        #20 {A,B,Ci}=3'b011;
        #20 {A,B,Ci}=3'b100;
        repeat(3) begin
            #20 {A,B,Ci}={A,B,Ci}+1'b001;
        end
    end
    fulladder T(S,Co,A,B,Ci);
endmodule
