/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "encoder21.v:1.1-33.10" */
module encoder21(a0, a1, a2, a3, y0, y1);
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
  /* src = "encoder21.v:2.11-2.13" */
  input a0;
  wire a0;
  /* src = "encoder21.v:2.14-2.16" */
  input a1;
  wire a1;
  /* src = "encoder21.v:2.17-2.19" */
  input a2;
  wire a2;
  /* src = "encoder21.v:2.20-2.22" */
  input a3;
  wire a3;
  /* src = "encoder21.v:3.16-3.18" */
  output y0;
  wire y0;
  /* src = "encoder21.v:3.19-3.21" */
  output y1;
  wire y1;
  OR _10_ (
    .A(a1),
    .B(a0),
    .Y(_07_)
  );
  OR _11_ (
    .A(a2),
    .B(a3),
    .Y(_08_)
  );
  AND _12_ (
    .A(a2),
    .B(a3),
    .Y(_09_)
  );
  OR _13_ (
    .A(_07_),
    .B(_09_),
    .Y(_00_)
  );
  NOT _14_ (
    .A(_00_),
    .Y(_01_)
  );
  AND _15_ (
    .A(_08_),
    .B(_01_),
    .Y(y1)
  );
  OR _16_ (
    .A(a3),
    .B(a1),
    .Y(_02_)
  );
  OR _17_ (
    .A(a2),
    .B(a0),
    .Y(_03_)
  );
  AND _18_ (
    .A(a3),
    .B(a1),
    .Y(_04_)
  );
  OR _19_ (
    .A(_03_),
    .B(_04_),
    .Y(_05_)
  );
  NOT _20_ (
    .A(_05_),
    .Y(_06_)
  );
  AND _21_ (
    .A(_02_),
    .B(_06_),
    .Y(y0)
  );
endmodule
