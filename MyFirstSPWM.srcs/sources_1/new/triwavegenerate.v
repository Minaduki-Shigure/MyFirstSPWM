`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 19:13:22
// Design Name: 
// Module Name: triwavegenerate
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


module triwavegenerate(
    input CLK_10M,
    output [7:0] triwave
    );
    reg [7:0] cnt = 1'd0;
    reg en = 1'd0;
    always @ (posedge CLK_10M)
    begin
        if (!en)
        begin
            cnt = cnt + 1'd1;
            if (cnt == 8'd255)
                en = 1'd1;
        end
        else
        begin
            cnt = cnt - 1'd1;
            if (cnt == 1'd0)
                en = 1'd0;
        end
    end
    assign triwave = cnt;
endmodule
