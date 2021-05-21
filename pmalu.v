`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 09:39:58 PM
// Design Name: 
// Module Name: pmalu
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

module pmalu(a,b,s,cin,y);

    input [3:0] a,b;
    input [2:0] s;
    input cin;
    output reg [3:0] y;
     
    always@(a or b or s or cin or y) 
    begin
        case(s)
            3'b000: y = a + b + cin;
            3'b001: y = a + ~b + cin;
            3'b010: y = b;
            3'b011: y = a;
            3'b100: y = a & b;
            3'b101: y = a | b;
            3'b110: y = ~a;
            3'b111: y = a ^ b;
        endcase
    end
endmodule
