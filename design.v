// Code your design here
module right_shift_register (
							input wire clk, rst,
  							input wire load,
  							input wire [3:0] d,
  							input wire shift_en,  // Shift enable
    						output reg [3:0] q    // Output register
							);
  always @ (posedge clk)
    begin
      if(rst)
        begin
          q <= 4'b0000;
        end
      else if (load)
        begin
          q <= d;
        end
      else if(shift_en)
        begin
          q <= {1'b0, q[3:1]};
        end
    end
endmodule
