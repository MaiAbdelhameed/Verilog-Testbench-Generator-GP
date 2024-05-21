/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "xnor14.v:1.1-10.10" */
module xnor14(a, b, c, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  /* src = "xnor14.v:2.16-2.17" */
  input a;
  wire a;
  /* src = "xnor14.v:3.16-3.17" */
  input b;
  wire b;
  /* src = "xnor14.v:4.16-4.17" */
  input c;
  wire c;
  /* src = "xnor14.v:5.17-5.20" */
  output out;
  wire out;
  NOT _09_ (
    .A(a),
    .Y(_04_)
  );
  OR _10_ (
    .A(b),
    .B(c),
    .Y(_05_)
  );
  NOT _11_ (
    .A(_05_),
    .Y(_06_)
  );
  AND _12_ (
    .A(b),
    .B(c),
    .Y(_07_)
  );
  NOT _13_ (
    .A(_07_),
    .Y(_08_)
  );
  AND _14_ (
    .A(_05_),
    .B(_08_),
    .Y(_00_)
  );
  OR _15_ (
    .A(_06_),
    .B(_07_),
    .Y(_01_)
  );
  AND _16_ (
    .A(a),
    .B(_00_),
    .Y(_02_)
  );
  AND _17_ (
    .A(_04_),
    .B(_01_),
    .Y(_03_)
  );
  OR _18_ (
    .A(_02_),
    .B(_03_),
    .Y(out)
  );
endmodule
