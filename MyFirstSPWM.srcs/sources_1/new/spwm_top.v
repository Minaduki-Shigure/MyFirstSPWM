`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 20:33:29
// Design Name: 
// Module Name: spwm_top
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


module spwm_top(
    input CLK,
    output spwmwave
    );
    wire CLK_10M;
    wire CLK_100K;
    wire [7:0] triwave;
    wire [7:0] sinwave;
    clkgenerate my_clk(
        .CLK(CLK),
        .CLK_10M(CLK_10M),
        .CLK_100K(CLK_100K)
    );
    triwavegenerate my_triwave(
        .CLK_10M(CLK_10M),
        .triwave(triwave)
    );
    singenerate my_sin(
        .CLK_100K(CLK_100K),
        .sinwave(sinwave)
    );
    spwmgenerate my_spwm(
        .CLK(CLK),
        .triwave(triwave),
        .sinwave(sinwave),
        .spwmwave(spwmwave)
    );
endmodule
