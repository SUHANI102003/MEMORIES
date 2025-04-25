`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 17:57:04
// Design Name: 
// Module Name: bram_syn_dual_port
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

// always synchronous
module bram_syn_dual_port
# (parameter ADDR_WIDTH = 10, DATA_WIDTH=8)
(
input clk, we_a,we_b,
input [DATA_WIDTH-1:0] din_a,din_b, // writing data
input [ADDR_WIDTH-1:0] addr_a, addr_b,  // reading & writing address
output reg [DATA_WIDTH-1:0] dout_a,dout_b // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [0 : 2**ADDR_WIDTH-1];

// port a
always@(posedge clk) begin
    if(we_a)
        ram2[addr_a] <= din_a;
        dout_a <= ram2[addr_a];
end

// port b
always@(posedge clk) begin
    if(we_b)
        ram2[addr_b] <= din_b;
        dout_b <= ram2[addr_b];
end
    
endmodule
