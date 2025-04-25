`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 18:26:20
// Design Name: 
// Module Name: bram_single_port_ram
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


module bram_single_port_ram
# (parameter ADDR_WIDTH = 10, DATA_WIDTH=8)
(
input clk, we_a,
input [DATA_WIDTH-1:0] din_a, // writing data
input [ADDR_WIDTH-1:0] addr_a, // reading & writing address
output reg [DATA_WIDTH-1:0] dout_a // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [0 : 2**ADDR_WIDTH-1];

// port a
always@(posedge clk) begin
    if(we_a)
        ram2[addr_a] <= din_a;
    else
        dout_a <= ram2[addr_a];
end  
endmodule
