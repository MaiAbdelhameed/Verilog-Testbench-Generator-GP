/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "mux7.v:2.1-9.10" */
module mux7(a, b, c, d, sel, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  /* src = "mux7.v:2.20-2.21" */
  input a;
  wire a;
  /* src = "mux7.v:2.23-2.24" */
  input b;
  wire b;
  /* src = "mux7.v:2.26-2.27" */
  input c;
  wire c;
  /* src = "mux7.v:2.29-2.30" */
  input d;
  wire d;
  /* src = "mux7.v:3.41-3.44" */
  input [1:0] sel;
  wire [1:0] sel;
  /* src = "mux7.v:4.36-4.37" */
  output y;
  wire y;
  not _10_ (
    .A(sel[1]),
    .Y(_08_)
  );
  not _11_ (
    .A(sel[0]),
    .Y(_09_)
  );
  OR _12_ (
    .A(sel[0]),
    .B(c),
    .Y(_00_)
  );
  OR _13_ (
    .A(_09_),
    .B(d),
    .Y(_01_)
  );
  AND _14_ (
    .A(_00_),
    .B(_01_),
    .Y(_02_)
  );
  OR _15_ (
    .A(_08_),
    .B(_02_),
    .Y(_03_)
  );
  OR _16_ (
    .A(sel[0]),
    .B(a),
    .Y(_04_)
  );
  OR _17_ (
    .A(_09_),
    .B(b),
    .Y(_05_)
  );
  AND _18_ (
    .A(_04_),
    .B(_05_),
    .Y(_06_)
  );
  OR _19_ (
    .A(sel[1]),
    .B(_06_),
    .Y(_07_)
  );
  AND _20_ (
    .A(_03_),
    .B(_07_),
    .Y(y)
  );
endmodule