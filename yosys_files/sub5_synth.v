/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "sub5.v:2.1-10.10" */
module sub5(A, B, cin, sub, bo);
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
  /* src = "sub5.v:4.8-4.9" */
  input A;
  wire A;
  /* src = "sub5.v:4.10-4.11" */
  input B;
  wire B;
  /* src = "sub5.v:5.13-5.15" */
  output bo;
  wire bo;
  /* src = "sub5.v:4.12-4.15" */
  input cin;
  wire cin;
  /* src = "sub5.v:5.9-5.12" */
  output sub;
  wire sub;
  OR _12_ (
    .A(A),
    .B(_09_),
    .Y(_00_)
  );
  AND _13_ (
    .A(A),
    .B(_09_),
    .Y(_01_)
  );
  OR _14_ (
    .A(_08_),
    .B(B),
    .Y(_02_)
  );
  AND _15_ (
    .A(_00_),
    .B(_02_),
    .Y(_03_)
  );
  OR _16_ (
    .A(_11_),
    .B(_01_),
    .Y(_04_)
  );
  OR _17_ (
    .A(_10_),
    .B(_03_),
    .Y(_05_)
  );
  OR _18_ (
    .A(cin),
    .B(_04_),
    .Y(_06_)
  );
  AND _19_ (
    .A(_05_),
    .B(_06_),
    .Y(sub)
  );
  OR _20_ (
    .A(cin),
    .B(_11_),
    .Y(_07_)
  );
  AND _21_ (
    .A(_02_),
    .B(_07_),
    .Y(bo)
  );
  NOT _22_ (
    .A(A),
    .Y(_08_)
  );
  NOT _23_ (
    .A(B),
    .Y(_09_)
  );
  NOT _24_ (
    .A(cin),
    .Y(_10_)
  );
  AND _25_ (
    .A(_08_),
    .B(B),
    .Y(_11_)
  );
endmodule
