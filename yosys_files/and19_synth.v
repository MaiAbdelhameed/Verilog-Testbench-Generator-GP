/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "and19.v:2.1-12.10" */
module and19(a, b, out);
  /* src = "and19.v:3.22-3.23" */
  input [1:0] a;
  wire [1:0] a;
  /* src = "and19.v:4.22-4.23" */
  input [1:0] b;
  wire [1:0] b;
  /* src = "and19.v:5.22-5.25" */
  output [1:0] out;
  wire [1:0] out;
  AND _0_ (
    .A(a[1]),
    .B(b[1]),
    .Y(out[1])
  );
  AND _1_ (
    .A(a[0]),
    .B(b[0]),
    .Y(out[0])
  );
endmodule
