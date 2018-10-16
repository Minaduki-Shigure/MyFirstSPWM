`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 19:18:33
// Design Name: 
// Module Name: singenerate
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


module singenerate(
    input CLK_100K,
    output [7:0] sinwave
    );
    reg [8:0] cnt = 1'd0;
    wire [8:0] address;
    always @ (posedge CLK_100K)
    begin
        cnt <= cnt + 1'd1;
    end
    assign address = cnt;
    dist_mem_gen_0 my_ram (
      .a(address),      // input wire [8 : 0] a
      .clk(CLK_100K),  // input wire clk
      .spo(sinwave)  // output wire [7 : 0] spo
    );
endmodule
