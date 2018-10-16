`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/16 20:50:22
// Design Name: 
// Module Name: spwm_tb
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


module spwm_tb(

    );
    reg CLK = 0;
    wire spwmwave;
    spwm_top main(.CLK(CLK),.spwmwave(spwmwave));
    always begin
        CLK = ~CLK;
    end
    initial begin
        #1000 $finish;
    end
endmodule
