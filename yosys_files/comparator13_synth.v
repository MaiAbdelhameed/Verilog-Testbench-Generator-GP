/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "comparator13.v:1.1-17.10" */
module comparator13(A0, A1, B0, B1, A_less_B, A_equal_B, A_greater_B);
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
  /* src = "comparator13.v:1.28-1.30" */
  input A0;
  wire A0;
  /* src = "comparator13.v:1.31-1.33" */
  input A1;
  wire A1;
  /* src = "comparator13.v:1.58-1.67" */
  output A_equal_B;
  wire A_equal_B;
  /* src = "comparator13.v:1.69-1.80" */
  output A_greater_B;
  wire A_greater_B;
  /* src = "comparator13.v:1.48-1.56" */
  output A_less_B;
  wire A_less_B;
  /* src = "comparator13.v:1.34-1.36" */
  input B0;
  wire B0;
  /* src = "comparator13.v:1.37-1.39" */
  input B1;
  wire B1;
  NOT _16_ (
    .A(A1),
    .Y(_14_)
  );
  NOT _17_ (
    .A(A0),
    .Y(_15_)
  );
  NOT _18_ (
    .A(B1),
    .Y(_00_)
  );
  NOT _19_ (
    .A(B0),
    .Y(_01_)
  );
  AND _20_ (
    .A(_14_),
    .B(B1),
    .Y(_02_)
  );
  OR _21_ (
    .A(A1),
    .B(_00_),
    .Y(_03_)
  );
  AND _22_ (
    .A(_15_),
    .B(B0),
    .Y(_04_)
  );
  OR _23_ (
    .A(A0),
    .B(_01_),
    .Y(_05_)
  );
  AND _24_ (
    .A(_03_),
    .B(_05_),
    .Y(_06_)
  );
  OR _25_ (
    .A(_02_),
    .B(_04_),
    .Y(_07_)
  );
  AND _26_ (
    .A(A1),
    .B(_00_),
    .Y(_08_)
  );
  OR _27_ (
    .A(_14_),
    .B(B1),
    .Y(_09_)
  );
  AND _28_ (
    .A(A0),
    .B(_01_),
    .Y(_10_)
  );
  OR _29_ (
    .A(_15_),
    .B(B0),
    .Y(_11_)
  );
  AND _30_ (
    .A(_09_),
    .B(_11_),
    .Y(_12_)
  );
  OR _31_ (
    .A(_08_),
    .B(_10_),
    .Y(_13_)
  );
  AND _32_ (
    .A(_06_),
    .B(_12_),
    .Y(A_equal_B)
  );
  AND _33_ (
    .A(_07_),
    .B(_09_),
    .Y(A_less_B)
  );
  AND _34_ (
    .A(_03_),
    .B(_13_),
    .Y(A_greater_B)
  );
endmodule