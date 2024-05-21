/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "pe8.v:1.1-22.10" */
module pe8(i, y, v);
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
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  /* src = "pe8.v:4.16-4.17" */
  input [7:0] i;
  wire [7:0] i;
  /* src = "pe8.v:3.16-3.17" */
  output v;
  wire v;
  /* src = "pe8.v:6.21-6.22" */
  output [2:0] y;
  wire [2:0] y;
  NOT _14_ (
    .A(i[2]),
    .Y(_00_)
  );
  NOT _15_ (
    .A(i[4]),
    .Y(_01_)
  );
  NOT _16_ (
    .A(i[6]),
    .Y(_02_)
  );
  AND _17_ (
    .A(i[1]),
    .B(_00_),
    .Y(_03_)
  );
  OR _18_ (
    .A(i[3]),
    .B(_03_),
    .Y(_04_)
  );
  AND _19_ (
    .A(_01_),
    .B(_04_),
    .Y(_05_)
  );
  OR _20_ (
    .A(i[5]),
    .B(_05_),
    .Y(_06_)
  );
  AND _21_ (
    .A(_02_),
    .B(_06_),
    .Y(_07_)
  );
  OR _22_ (
    .A(i[7]),
    .B(_07_),
    .Y(y[0])
  );
  OR _23_ (
    .A(i[2]),
    .B(i[3]),
    .Y(_08_)
  );
  OR _24_ (
    .A(i[4]),
    .B(i[5]),
    .Y(_09_)
  );
  NOT _25_ (
    .A(_09_),
    .Y(_10_)
  );
  AND _26_ (
    .A(_08_),
    .B(_10_),
    .Y(_11_)
  );
  OR _27_ (
    .A(i[6]),
    .B(i[7]),
    .Y(_12_)
  );
  OR _28_ (
    .A(_11_),
    .B(_12_),
    .Y(y[1])
  );
  OR _29_ (
    .A(_09_),
    .B(_12_),
    .Y(y[2])
  );
  OR _30_ (
    .A(i[1]),
    .B(_08_),
    .Y(_13_)
  );
  OR _31_ (
    .A(y[2]),
    .B(_13_),
    .Y(v)
  );
endmodule