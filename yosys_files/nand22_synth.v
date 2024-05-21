/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "nand22.v:3.1-13.10" */
module nand22(a, b, c, d, out);
  wire _0_;
  wire _1_;
  wire _2_;
  /* src = "nand22.v:4.9-4.10" */
  input a;
  wire a;
  /* src = "nand22.v:5.9-5.10" */
  input b;
  wire b;
  /* src = "nand22.v:6.9-6.10" */
  input c;
  wire c;
  /* src = "nand22.v:7.9-7.10" */
  input d;
  wire d;
  /* src = "nand22.v:8.10-8.13" */
  output out;
  wire out;
  AND _3_ (
    .A(a),
    .B(b),
    .Y(_0_)
  );
  AND _4_ (
    .A(c),
    .B(d),
    .Y(_1_)
  );
  AND _5_ (
    .A(_0_),
    .B(_1_),
    .Y(_2_)
  );
  NOT _6_ (
    .A(_2_),
    .Y(out)
  );
endmodule
