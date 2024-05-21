/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "temp2.v:1.1-35.10" */
module temp2(enable, binary_in, decoder_out);
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
  /* src = "temp2.v:3.14-3.23" */
  input [3:0] binary_in;
  wire [3:0] binary_in;
  /* src = "temp2.v:4.20-4.31" */
  output [15:0] decoder_out;
  wire [15:0] decoder_out;
  /* src = "temp2.v:2.9-2.15" */
  input enable;
  wire enable;
  NOT _18_ (
    .A(binary_in[2]),
    .Y(_00_)
  );
  NOT _19_ (
    .A(binary_in[3]),
    .Y(_01_)
  );
  NOT _20_ (
    .A(binary_in[0]),
    .Y(_02_)
  );
  NOT _21_ (
    .A(binary_in[1]),
    .Y(_03_)
  );
  AND _22_ (
    .A(_02_),
    .B(_03_),
    .Y(_04_)
  );
  AND _23_ (
    .A(_00_),
    .B(_04_),
    .Y(_05_)
  );
  AND _24_ (
    .A(_01_),
    .B(enable),
    .Y(_06_)
  );
  AND _25_ (
    .A(_05_),
    .B(_06_),
    .Y(decoder_out[0])
  );
  AND _26_ (
    .A(binary_in[0]),
    .B(_03_),
    .Y(_07_)
  );
  AND _27_ (
    .A(_00_),
    .B(_07_),
    .Y(_08_)
  );
  AND _28_ (
    .A(_06_),
    .B(_08_),
    .Y(decoder_out[1])
  );
  AND _29_ (
    .A(_02_),
    .B(binary_in[1]),
    .Y(_09_)
  );
  AND _30_ (
    .A(_00_),
    .B(_09_),
    .Y(_10_)
  );
  AND _31_ (
    .A(_06_),
    .B(_10_),
    .Y(decoder_out[2])
  );
  AND _32_ (
    .A(binary_in[0]),
    .B(binary_in[1]),
    .Y(_11_)
  );
  AND _33_ (
    .A(_00_),
    .B(_11_),
    .Y(_12_)
  );
  AND _34_ (
    .A(_06_),
    .B(_12_),
    .Y(decoder_out[3])
  );
  AND _35_ (
    .A(binary_in[2]),
    .B(_04_),
    .Y(_13_)
  );
  AND _36_ (
    .A(_06_),
    .B(_13_),
    .Y(decoder_out[4])
  );
  AND _37_ (
    .A(binary_in[2]),
    .B(_07_),
    .Y(_14_)
  );
  AND _38_ (
    .A(_06_),
    .B(_14_),
    .Y(decoder_out[5])
  );
  AND _39_ (
    .A(binary_in[2]),
    .B(_09_),
    .Y(_15_)
  );
  AND _40_ (
    .A(_06_),
    .B(_15_),
    .Y(decoder_out[6])
  );
  AND _41_ (
    .A(binary_in[2]),
    .B(_11_),
    .Y(_16_)
  );
  AND _42_ (
    .A(_06_),
    .B(_16_),
    .Y(decoder_out[7])
  );
  AND _43_ (
    .A(binary_in[3]),
    .B(enable),
    .Y(_17_)
  );
  AND _44_ (
    .A(_05_),
    .B(_17_),
    .Y(decoder_out[8])
  );
  AND _45_ (
    .A(_08_),
    .B(_17_),
    .Y(decoder_out[9])
  );
  AND _46_ (
    .A(_10_),
    .B(_17_),
    .Y(decoder_out[10])
  );
  AND _47_ (
    .A(_12_),
    .B(_17_),
    .Y(decoder_out[11])
  );
  AND _48_ (
    .A(_13_),
    .B(_17_),
    .Y(decoder_out[12])
  );
  AND _49_ (
    .A(_14_),
    .B(_17_),
    .Y(decoder_out[13])
  );
  AND _50_ (
    .A(_15_),
    .B(_17_),
    .Y(decoder_out[14])
  );
  AND _51_ (
    .A(_16_),
    .B(_17_),
    .Y(decoder_out[15])
  );
endmodule
