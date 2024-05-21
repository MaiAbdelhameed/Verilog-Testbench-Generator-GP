/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "mux6.v:2.1-16.10" */
module mux6(a, b, sel, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  /* src = "mux6.v:2.26-2.27" */
  input [3:0] a;
  wire [3:0] a;
  /* src = "mux6.v:2.29-2.30" */
  input [3:0] b;
  wire [3:0] b;
  /* src = "mux6.v:2.38-2.41" */
  input sel;
  wire sel;
  /* src = "mux6.v:3.34-3.35" */
  output [3:0] y;
  wire [3:0] y;
  NOT _09_ (
    .A(sel),
    .Y(_00_)
  );
  AND _10_ (
    .A(b[0]),
    .B(sel),
    .Y(_01_)
  );
  AND _11_ (
    .A(a[0]),
    .B(_00_),
    .Y(_02_)
  );
  OR _12_ (
    .A(_01_),
    .B(_02_),
    .Y(y[0])
  );
  AND _13_ (
    .A(sel),
    .B(b[1]),
    .Y(_03_)
  );
  AND _14_ (
    .A(_00_),
    .B(a[1]),
    .Y(_04_)
  );
  OR _15_ (
    .A(_03_),
    .B(_04_),
    .Y(y[1])
  );
  AND _16_ (
    .A(sel),
    .B(b[2]),
    .Y(_05_)
  );
  AND _17_ (
    .A(_00_),
    .B(a[2]),
    .Y(_06_)
  );
  OR _18_ (
    .A(_05_),
    .B(_06_),
    .Y(y[2])
  );
  AND _19_ (
    .A(sel),
    .B(b[3]),
    .Y(_07_)
  );
  AND _20_ (
    .A(_00_),
    .B(a[3]),
    .Y(_08_)
  );
  OR _21_ (
    .A(_07_),
    .B(_08_),
    .Y(y[3])
  );
endmodule
