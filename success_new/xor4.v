// tested
module xor4 (
  input a,
  input b,
  output reg out
);

always @(*) begin
    case ({a, b})
        2'b00: out = 1'b0;
        2'b01: out = 1'b1;
        2'b10: out = 1'b1;
        2'b11: out = 1'b0; // Bits different
    endcase
end
endmodule

