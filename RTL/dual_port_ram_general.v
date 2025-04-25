`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 11:05:35
// Design Name: 
// Module Name: dual_port_ram_general
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

// mem = 2^3 * 8 = 8*8 memory
module dual_port_ram_general
# (parameter ADDR_WIDTH = 3, DATA_WIDTH=8)
(
input clk, we,
input [DATA_WIDTH-1:0] w_data, // writing data
input [ADDR_WIDTH-1:0] r_addr, w_addr,  // reading & writing address
output [DATA_WIDTH-1:0] r_data // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [0 : 2**ADDR_WIDTH-1];

// syn write operation
always@(posedge clk) begin
    if(we)
        ram2[w_addr] <= w_data;
end

// asyn read operation // therefore, outside always
assign r_data = ram2[r_addr];

endmodule
