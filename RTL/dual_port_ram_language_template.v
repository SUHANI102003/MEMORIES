`timescale 1ns / 1ps

/*
// TEMPLATE
   parameter RAM_WIDTH = <ram_width>;
   parameter RAM_ADDR_BITS = <ram_addr_bits>;

   (* ram_style="distributed" *)
   reg [RAM_WIDTH-1:0] <ram_name> [(2**RAM_ADDR_BITS)-1:0];

   wire [RAM_WIDTH-1:0] <output_data>;

   <reg_or_wire> [RAM_ADDR_BITS-1:0] <read_address>, <write_address>;
   <reg_or_wire> [RAM_WIDTH-1:0] <input_data>;

   always @(posedge <clock>)
      if (<write_enable>)
         <ram_name>[<write_address>] <= <input_data>;

   assign <output_data> = <ram_name>[<read_address>];
					
				
*/

module dual_port_ram_language_template
# (parameter ADDR_WIDTH = 3, DATA_WIDTH=8)
(
input clk, we,
input [DATA_WIDTH-1:0] w_data, // writing data
input [ADDR_WIDTH-1:0] r_addr, w_addr,  // reading & writing address
output [DATA_WIDTH-1:0] r_data // reading data
    );
    
// declaring memory size
reg [DATA_WIDTH-1:0] ram2 [(2**ADDR_WIDTH-1) : 0];

// following the template
always @(posedge clk)
 if(we)
    ram2[w_addr] <= w_data;
    
assign r_data = ram2[r_addr];

    
endmodule
