/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "or16.v:2.1-12.10" */
module or16(a, b, out);
  /* src = "or16.v:3.17-3.18" */
  input [1:0] a;
  wire [1:0] a;
  /* src = "or16.v:3.19-3.20" */
  input [1:0] b;
  wire [1:0] b;
  /* src = "or16.v:4.22-4.25" */
  output [1:0] out;
  wire [1:0] out;
  OR _0_ (
    .A(a[0]),
    .B(b[0]),
    .Y(out[0])
  );
  OR _1_ (
    .A(a[1]),
    .B(b[1]),
    .Y(out[1])
  );
endmodule