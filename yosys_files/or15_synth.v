/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "or15.v:2.1-28.10" */
module or15(a, b, out);
  /* src = "or15.v:3.18-3.19" */
  input [15:0] a;
  wire [15:0] a;
  /* src = "or15.v:4.18-4.19" */
  input [15:0] b;
  wire [15:0] b;
  /* src = "or15.v:5.19-5.22" */
  output [15:0] out;
  wire [15:0] out;
  OR _00_ (
    .A(a[6]),
    .B(b[6]),
    .Y(out[6])
  );
  OR _01_ (
    .A(a[7]),
    .B(b[7]),
    .Y(out[7])
  );
  OR _02_ (
    .A(a[8]),
    .B(b[8]),
    .Y(out[8])
  );
  OR _03_ (
    .A(a[9]),
    .B(b[9]),
    .Y(out[9])
  );
  OR _04_ (
    .A(a[10]),
    .B(b[10]),
    .Y(out[10])
  );
  OR _05_ (
    .A(a[11]),
    .B(b[11]),
    .Y(out[11])
  );
  OR _06_ (
    .A(a[12]),
    .B(b[12]),
    .Y(out[12])
  );
  OR _07_ (
    .A(a[13]),
    .B(b[13]),
    .Y(out[13])
  );
  OR _08_ (
    .A(a[14]),
    .B(b[14]),
    .Y(out[14])
  );
  OR _09_ (
    .A(a[15]),
    .B(b[15]),
    .Y(out[15])
  );
  OR _10_ (
    .A(a[0]),
    .B(b[0]),
    .Y(out[0])
  );
  OR _11_ (
    .A(a[1]),
    .B(b[1]),
    .Y(out[1])
  );
  OR _12_ (
    .A(a[2]),
    .B(b[2]),
    .Y(out[2])
  );
  OR _13_ (
    .A(a[3]),
    .B(b[3]),
    .Y(out[3])
  );
  OR _14_ (
    .A(a[4]),
    .B(b[4]),
    .Y(out[4])
  );
  OR _15_ (
    .A(a[5]),
    .B(b[5]),
    .Y(out[5])
  );
endmodule
