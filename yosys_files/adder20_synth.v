/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "adder20.v:2.1-34.10" */
module adder20(Y, carryout, A, B, carryin);
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
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  /* src = "adder20.v:5.14-5.15" */
  input [3:0] A;
  wire [3:0] A;
  /* src = "adder20.v:5.16-5.17" */
  input [3:0] B;
  wire [3:0] B;
  /* src = "adder20.v:3.15-3.16" */
  output [3:0] Y;
  wire [3:0] Y;
  /* src = "adder20.v:6.9-6.16" */
  input carryin;
  wire carryin;
  /* src = "adder20.v:4.10-4.18" */
  output carryout;
  wire carryout;
  NOT _37_ (
    .A(A[3]),
    .Y(_00_)
  );
  AND _38_ (
    .A(carryin),
    .B(B[0]),
    .Y(_01_)
  );
  NOT _39_ (
    .A(_01_),
    .Y(_02_)
  );
  OR _40_ (
    .A(carryin),
    .B(B[0]),
    .Y(_03_)
  );
  AND _41_ (
    .A(A[0]),
    .B(_03_),
    .Y(_04_)
  );
  NOT _42_ (
    .A(_04_),
    .Y(_05_)
  );
  OR _43_ (
    .A(_01_),
    .B(_04_),
    .Y(_06_)
  );
  AND _44_ (
    .A(B[1]),
    .B(_06_),
    .Y(_07_)
  );
  OR _45_ (
    .A(B[1]),
    .B(_06_),
    .Y(_08_)
  );
  NOT _46_ (
    .A(_08_),
    .Y(_09_)
  );
  OR _47_ (
    .A(A[1]),
    .B(_07_),
    .Y(_10_)
  );
  AND _48_ (
    .A(_08_),
    .B(_10_),
    .Y(_11_)
  );
  AND _49_ (
    .A(B[2]),
    .B(_11_),
    .Y(_12_)
  );
  NOT _50_ (
    .A(_12_),
    .Y(_13_)
  );
  OR _51_ (
    .A(B[2]),
    .B(_11_),
    .Y(_14_)
  );
  AND _52_ (
    .A(A[2]),
    .B(_14_),
    .Y(_15_)
  );
  OR _53_ (
    .A(_12_),
    .B(_15_),
    .Y(_16_)
  );
  AND _54_ (
    .A(B[3]),
    .B(_16_),
    .Y(_17_)
  );
  NOT _55_ (
    .A(_17_),
    .Y(_18_)
  );
  OR _56_ (
    .A(B[3]),
    .B(_16_),
    .Y(_19_)
  );
  NOT _57_ (
    .A(_19_),
    .Y(_20_)
  );
  AND _58_ (
    .A(A[3]),
    .B(_19_),
    .Y(_21_)
  );
  OR _59_ (
    .A(_17_),
    .B(_21_),
    .Y(carryout)
  );
  AND _60_ (
    .A(_02_),
    .B(_03_),
    .Y(_22_)
  );
  OR _61_ (
    .A(A[0]),
    .B(_22_),
    .Y(_23_)
  );
  OR _62_ (
    .A(_01_),
    .B(_05_),
    .Y(_24_)
  );
  AND _63_ (
    .A(_23_),
    .B(_24_),
    .Y(Y[0])
  );
  OR _64_ (
    .A(_07_),
    .B(_09_),
    .Y(_25_)
  );
  AND _65_ (
    .A(A[1]),
    .B(_25_),
    .Y(_26_)
  );
  OR _66_ (
    .A(A[1]),
    .B(_25_),
    .Y(_27_)
  );
  NOT _67_ (
    .A(_27_),
    .Y(_28_)
  );
  OR _68_ (
    .A(_26_),
    .B(_28_),
    .Y(Y[1])
  );
  AND _69_ (
    .A(_13_),
    .B(_14_),
    .Y(_29_)
  );
  OR _70_ (
    .A(A[2]),
    .B(_29_),
    .Y(_30_)
  );
  AND _71_ (
    .A(_13_),
    .B(_15_),
    .Y(_31_)
  );
  NOT _72_ (
    .A(_31_),
    .Y(_32_)
  );
  AND _73_ (
    .A(_30_),
    .B(_32_),
    .Y(Y[2])
  );
  AND _74_ (
    .A(_18_),
    .B(_19_),
    .Y(_33_)
  );
  OR _75_ (
    .A(_17_),
    .B(_20_),
    .Y(_34_)
  );
  OR _76_ (
    .A(A[3]),
    .B(_33_),
    .Y(_35_)
  );
  OR _77_ (
    .A(_00_),
    .B(_34_),
    .Y(_36_)
  );
  AND _78_ (
    .A(_35_),
    .B(_36_),
    .Y(Y[3])
  );
endmodule
