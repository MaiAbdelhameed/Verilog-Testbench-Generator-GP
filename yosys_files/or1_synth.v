/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "or1.v:2.1-10.10" */
module or1(a, b, out);
  /* src = "or1.v:3.15-3.16" */
  input [2:0] a;
  wire [2:0] a;
  /* src = "or1.v:4.15-4.16" */
  input [2:0] b;
  wire [2:0] b;
  /* src = "or1.v:5.16-5.19" */
  output [2:0] out;
  wire [2:0] out;
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
  OR _2_ (
    .A(a[2]),
    .B(b[2]),
    .Y(out[2])
  );
endmodule
