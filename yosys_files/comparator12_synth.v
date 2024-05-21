/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "comparator12.v:1.1-11.10" */
module comparator12(A, B, A_less_B, A_equal_B, A_greater_B);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  /* src = "comparator12.v:1.28-1.29" */
  input A;
  wire A;
  /* src = "comparator12.v:1.54-1.63" */
  output A_equal_B;
  wire A_equal_B;
  /* src = "comparator12.v:1.65-1.76" */
  output A_greater_B;
  wire A_greater_B;
  /* src = "comparator12.v:1.44-1.52" */
  output A_less_B;
  wire A_less_B;
  /* src = "comparator12.v:1.30-1.31" */
  input B;
  wire B;
  NOT _04_ (
    .A(A),
    .Y(_01_)
  );
  NOT _05_ (
    .A(B),
    .Y(_02_)
  );
  OR _06_ (
    .A(A),
    .B(_02_),
    .Y(_03_)
  );
  NOT _07_ (
    .A(_03_),
    .Y(A_less_B)
  );
  OR _08_ (
    .A(_01_),
    .B(B),
    .Y(_00_)
  );
  NOT _09_ (
    .A(_00_),
    .Y(A_greater_B)
  );
  AND _10_ (
    .A(_03_),
    .B(_00_),
    .Y(A_equal_B)
  );
endmodule
