/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "mult2.v:1.1-25.10" */
module mult2(a, b, result);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  /* src = "mult2.v:1.27-1.28" */
  input [1:0] a;
  wire [1:0] a;
  /* src = "mult2.v:1.30-1.31" */
  input [1:0] b;
  wire [1:0] b;
  /* src = "mult2.v:2.30-2.36" */
  output [3:0] result;
  wire [3:0] result;
  AND _06_ (
    .A(b[0]),
    .B(a[0]),
    .Y(result[0])
  );
  NOT _07_ (
    .A(result[0]),
    .Y(_00_)
  );
  AND _08_ (
    .A(a[0]),
    .B(b[1]),
    .Y(_01_)
  );
  AND _09_ (
    .A(b[0]),
    .B(a[1]),
    .Y(_02_)
  );
  OR _10_ (
    .A(_01_),
    .B(_02_),
    .Y(_03_)
  );
  AND _11_ (
    .A(b[1]),
    .B(a[1]),
    .Y(_04_)
  );
  AND _12_ (
    .A(result[0]),
    .B(_04_),
    .Y(result[3])
  );
  NOT _13_ (
    .A(result[3]),
    .Y(_05_)
  );
  AND _14_ (
    .A(_03_),
    .B(_05_),
    .Y(result[1])
  );
  AND _15_ (
    .A(_00_),
    .B(_04_),
    .Y(result[2])
  );
endmodule
