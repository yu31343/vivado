`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/22 15:11:05
// Design Name: 
// Module Name: sim_addr_2bit
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


module sim_addr_2bit();
    reg [1:0] A,B;
    reg Ci;
    wire [1:0] S;
    wire Co;
    initial begin
        A=2'b00;
        B=2'b00;
        Ci=1;
    end
    always begin
        #10 A=A+1'b1;
        #20 B=B+1'b1;
    end
    addr_2bit T(S,Co,A,B,Ci);
endmodule
