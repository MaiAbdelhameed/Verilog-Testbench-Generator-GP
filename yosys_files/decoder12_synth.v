/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "decoder12.v:1.1-23.10" */
module decoder12(en, in, out);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  /* src = "decoder12.v:4.11-4.13" */
  input en;
  wire en;
  /* src = "decoder12.v:3.14-3.16" */
  input [1:0] in;
  wire [1:0] in;
  /* src = "decoder12.v:5.19-5.22" */
  output [3:0] out;
  wire [3:0] out;
  NOT _04_ (
    .A(in[1]),
    .Y(_02_)
  );
  NOT _05_ (
    .A(in[0]),
    .Y(_03_)
  );
  AND _06_ (
    .A(_03_),
    .B(en),
    .Y(_00_)
  );
  AND _07_ (
    .A(_02_),
    .B(_00_),
    .Y(out[0])
  );
  AND _08_ (
    .A(in[0]),
    .B(en),
    .Y(_01_)
  );
  AND _09_ (
    .A(_02_),
    .B(_01_),
    .Y(out[1])
  );
  AND _10_ (
    .A(in[1]),
    .B(_00_),
    .Y(out[2])
  );
  AND _11_ (
    .A(in[1]),
    .B(_01_),
    .Y(out[3])
  );
endmodule
