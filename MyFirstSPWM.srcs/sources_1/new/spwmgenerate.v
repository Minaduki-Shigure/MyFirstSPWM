`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 20:29:13
// Design Name: 
// Module Name: spwmgenerate
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


module spwmgenerate(
    input CLK,
    input [7:0] triwave,
    input [7:0] sinwave,
    output reg spwmwave
    );
    always @ (posedge CLK)
    begin
        if (sinwave >= triwave)
            spwmwave <= 1'd1;
        else
            spwmwave <= 1'd0;
    end
endmodule
