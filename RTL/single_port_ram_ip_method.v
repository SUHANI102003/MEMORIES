`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 12:23:19
// Design Name: 
// Module Name: single_port_ram_ip_method
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


module single_port_ram_ip_method
(
    input clk,
    input we,
    //input rst,
    input [5:0] addr, // 2^6
    input [7:0] din, // 8 bits
    output [7:0] dout
    );

 blk_mem_gen_0 b1 (clk,we,addr,din,dout);
    
endmodule
