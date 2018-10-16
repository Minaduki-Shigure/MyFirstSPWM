`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 19:13:22
// Design Name: 
// Module Name: clkgenerate
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


module clkgenerate(
    input CLK,
    output reg CLK_10M,
    output reg CLK_100K
    );
    reg [6:0] cnt_10M = 1'd0;
    reg [8:0] cnt_100K = 1'd0;
    initial begin
        CLK_10M = 0;
        CLK_100K = 0;
    end
    always @ (posedge CLK)
    begin
        if (cnt_10M == 7'd5)
        begin
            cnt_10M <= 1'd0;
            CLK_10M <= ~CLK_10M;
        end
        else
            cnt_10M <= cnt_10M + 1'd1;
    end
    always @ (posedge CLK)
    begin
        if (cnt_100K == 9'd500)
        begin
            cnt_100K <= 1'd0;
            CLK_100K <= ~CLK_100K;
        end
        else
            cnt_100K <= cnt_100K + 1'd1;
    end
endmodule
