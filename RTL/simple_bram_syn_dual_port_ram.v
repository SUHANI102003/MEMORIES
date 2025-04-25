`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 18:14:29
// Design Name: 
// Module Name: simple_bram_syn_dual_port_ram
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


module simple_bram_syn_dual_port_ram
# (parameter ADDR_WIDTH = 10, DATA_WIDTH=8)
(
input clk, we_a,
input [DATA_WIDTH-1:0] din, // writing data
input [ADDR_WIDTH-1:0] addr_w,addr_r, // reading & writing address
output reg [DATA_WIDTH-1:0] dout // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [0 : 2**ADDR_WIDTH-1];

// port a
always@(posedge clk) begin
    if(we_a)
        ram2[addr_w] <= din;
        dout <= ram2[addr_r];
end  
endmodule
