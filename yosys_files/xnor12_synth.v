/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "xnor12.v:1.1-17.10" */
module xnor12(a, b, c, d, e, f, g, out);
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
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  /* src = "xnor12.v:2.9-2.10" */
  input a;
  wire a;
  /* src = "xnor12.v:3.9-3.10" */
  input b;
  wire b;
  /* src = "xnor12.v:4.9-4.10" */
  input c;
  wire c;
  /* src = "xnor12.v:5.9-5.10" */
  input d;
  wire d;
  /* src = "xnor12.v:6.9-6.10" */
  input e;
  wire e;
  /* src = "xnor12.v:7.9-7.10" */
  input f;
  wire f;
  /* src = "xnor12.v:8.9-8.10" */
  input g;
  wire g;
  /* src = "xnor12.v:9.14-9.17" */
  output out;
  wire out;
  NOT _33_ (
    .A(_06_),
    .Y(_07_)
  );
  AND _34_ (
    .A(e),
    .B(c),
    .Y(_08_)
  );
  NOT _35_ (
    .A(_08_),
    .Y(_09_)
  );
  AND _36_ (
    .A(_06_),
    .B(_09_),
    .Y(_10_)
  );
  OR _37_ (
    .A(_07_),
    .B(_08_),
    .Y(_11_)
  );
  AND _38_ (
    .A(_05_),
    .B(_10_),
    .Y(_12_)
  );
  OR _39_ (
    .A(_04_),
    .B(_11_),
    .Y(_13_)
  );
  AND _40_ (
    .A(_04_),
    .B(_11_),
    .Y(_14_)
  );
  OR _41_ (
    .A(_05_),
    .B(_10_),
    .Y(_15_)
  );
  AND _42_ (
    .A(_13_),
    .B(_15_),
    .Y(_16_)
  );
  OR _43_ (
    .A(_12_),
    .B(_14_),
    .Y(_17_)
  );
  AND _44_ (
    .A(g),
    .B(f),
    .Y(_18_)
  );
  NOT _45_ (
    .A(_18_),
    .Y(_19_)
  );
  OR _46_ (
    .A(g),
    .B(f),
    .Y(_20_)
  );
  NOT _47_ (
    .A(_20_),
    .Y(_21_)
  );
  OR _48_ (
    .A(_18_),
    .B(_21_),
    .Y(_22_)
  );
  AND _49_ (
    .A(_19_),
    .B(_20_),
    .Y(_23_)
  );
  AND _50_ (
    .A(d),
    .B(_23_),
    .Y(_24_)
  );
  OR _51_ (
    .A(_32_),
    .B(_22_),
    .Y(_25_)
  );
  AND _52_ (
    .A(_32_),
    .B(_22_),
    .Y(_26_)
  );
  OR _53_ (
    .A(d),
    .B(_23_),
    .Y(_27_)
  );
  AND _54_ (
    .A(_25_),
    .B(_27_),
    .Y(_28_)
  );
  OR _55_ (
    .A(_24_),
    .B(_26_),
    .Y(_29_)
  );
  OR _56_ (
    .A(_17_),
    .B(_29_),
    .Y(_30_)
  );
  OR _57_ (
    .A(_16_),
    .B(_28_),
    .Y(_31_)
  );
  AND _58_ (
    .A(_30_),
    .B(_31_),
    .Y(out)
  );
  NOT _59_ (
    .A(d),
    .Y(_32_)
  );
  OR _60_ (
    .A(b),
    .B(a),
    .Y(_00_)
  );
  NOT _61_ (
    .A(_00_),
    .Y(_01_)
  );
  AND _62_ (
    .A(b),
    .B(a),
    .Y(_02_)
  );
  NOT _63_ (
    .A(_02_),
    .Y(_03_)
  );
  AND _64_ (
    .A(_00_),
    .B(_03_),
    .Y(_04_)
  );
  OR _65_ (
    .A(_01_),
    .B(_02_),
    .Y(_05_)
  );
  OR _66_ (
    .A(e),
    .B(c),
    .Y(_06_)
  );
endmodule
