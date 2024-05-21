/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "mux17.v:2.1-19.10" */
module mux17(a, b, c, d, e, f, g, h, sel, out);
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
  /* src = "mux17.v:2.21-2.22" */
  input a;
  wire a;
  /* src = "mux17.v:2.23-2.24" */
  input b;
  wire b;
  /* src = "mux17.v:2.25-2.26" */
  input c;
  wire c;
  /* src = "mux17.v:2.27-2.28" */
  input d;
  wire d;
  /* src = "mux17.v:2.29-2.30" */
  input e;
  wire e;
  /* src = "mux17.v:2.31-2.32" */
  input f;
  wire f;
  /* src = "mux17.v:2.33-2.34" */
  input g;
  wire g;
  /* src = "mux17.v:2.35-2.36" */
  input h;
  wire h;
  /* src = "mux17.v:4.40-4.43" */
  output out;
  wire out;
  /* src = "mux17.v:3.41-3.44" */
  input [2:0] sel;
  wire [2:0] sel;
  NOT _23_ (
    .A(sel[0]),
    .Y(_00_)
  );
  NOT _24_ (
    .A(sel[1]),
    .Y(_01_)
  );
  NOT _25_ (
    .A(sel[2]),
    .Y(_02_)
  );
  OR _26_ (
    .A(_02_),
    .B(h),
    .Y(_03_)
  );
  OR _27_ (
    .A(sel[2]),
    .B(d),
    .Y(_04_)
  );
  AND _28_ (
    .A(sel[1]),
    .B(_04_),
    .Y(_05_)
  );
  AND _29_ (
    .A(_03_),
    .B(_05_),
    .Y(_06_)
  );
  OR _30_ (
    .A(sel[2]),
    .B(b),
    .Y(_07_)
  );
  OR _31_ (
    .A(_02_),
    .B(f),
    .Y(_08_)
  );
  AND _32_ (
    .A(_07_),
    .B(_08_),
    .Y(_09_)
  );
  AND _33_ (
    .A(_01_),
    .B(_09_),
    .Y(_10_)
  );
  OR _34_ (
    .A(_06_),
    .B(_10_),
    .Y(_11_)
  );
  AND _35_ (
    .A(sel[0]),
    .B(_11_),
    .Y(_12_)
  );
  OR _36_ (
    .A(_02_),
    .B(g),
    .Y(_13_)
  );
  OR _37_ (
    .A(sel[2]),
    .B(c),
    .Y(_14_)
  );
  AND _38_ (
    .A(sel[1]),
    .B(_14_),
    .Y(_15_)
  );
  AND _39_ (
    .A(_13_),
    .B(_15_),
    .Y(_16_)
  );
  OR _40_ (
    .A(sel[2]),
    .B(a),
    .Y(_17_)
  );
  OR _41_ (
    .A(_02_),
    .B(e),
    .Y(_18_)
  );
  AND _42_ (
    .A(_17_),
    .B(_18_),
    .Y(_19_)
  );
  AND _43_ (
    .A(_01_),
    .B(_19_),
    .Y(_20_)
  );
  OR _44_ (
    .A(_16_),
    .B(_20_),
    .Y(_21_)
  );
  AND _45_ (
    .A(_00_),
    .B(_21_),
    .Y(_22_)
  );
  OR _46_ (
    .A(_12_),
    .B(_22_),
    .Y(out)
  );
endmodule
