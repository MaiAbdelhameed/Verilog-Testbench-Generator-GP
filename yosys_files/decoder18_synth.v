/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "decoder18.v:1.1-25.10" */
module decoder18(a, b, c, out, en);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  /* src = "decoder18.v:2.7-2.8" */
  input a;
  wire a;
  /* src = "decoder18.v:2.9-2.10" */
  input b;
  wire b;
  /* src = "decoder18.v:2.11-2.12" */
  input c;
  wire c;
  /* src = "decoder18.v:3.7-3.9" */
  input en;
  wire en;
  /* src = "decoder18.v:4.18-4.21" */
  output [7:0] out;
  wire [7:0] out;
  NOT _09_ (
    .A(b),
    .Y(_00_)
  );
  NOT _10_ (
    .A(a),
    .Y(_01_)
  );
  NOT _11_ (
    .A(c),
    .Y(_02_)
  );
  AND _12_ (
    .A(_00_),
    .B(_02_),
    .Y(_03_)
  );
  AND _13_ (
    .A(_01_),
    .B(en),
    .Y(_04_)
  );
  AND _14_ (
    .A(_03_),
    .B(_04_),
    .Y(out[0])
  );
  AND _15_ (
    .A(_00_),
    .B(c),
    .Y(_05_)
  );
  AND _16_ (
    .A(_04_),
    .B(_05_),
    .Y(out[1])
  );
  AND _17_ (
    .A(b),
    .B(_02_),
    .Y(_06_)
  );
  AND _18_ (
    .A(_04_),
    .B(_06_),
    .Y(out[2])
  );
  AND _19_ (
    .A(b),
    .B(c),
    .Y(_07_)
  );
  AND _20_ (
    .A(_04_),
    .B(_07_),
    .Y(out[3])
  );
  AND _21_ (
    .A(a),
    .B(en),
    .Y(_08_)
  );
  AND _22_ (
    .A(_03_),
    .B(_08_),
    .Y(out[4])
  );
  AND _23_ (
    .A(_05_),
    .B(_08_),
    .Y(out[5])
  );
  AND _24_ (
    .A(_06_),
    .B(_08_),
    .Y(out[6])
  );
  AND _25_ (
    .A(_07_),
    .B(_08_),
    .Y(out[7])
  );
endmodule
