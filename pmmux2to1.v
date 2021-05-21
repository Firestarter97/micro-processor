`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2020 05:08:20 PM
// Design Name: 
// Module Name: pmmux2to1
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


module pmmux2to1(d0,d1,s,y);

    input [3:0] d0,d1;
    input s;
    output reg [3:0] y;
    
    always@(d0 or d1 or s)
    begin
        if(s)
        begin
            y = d1;
        end
        else
            y = d0;
    end
endmodule
