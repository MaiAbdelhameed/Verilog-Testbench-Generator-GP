module parameterized_left_shift_register #(parameter WIDTH = 8) (
  input [WIDTH-1:0] d,
  input clk,
  input enable, // or other control signals
  output reg [WIDTH-1:0] q
);

  // ... implementation for left shift functionality

endmodule