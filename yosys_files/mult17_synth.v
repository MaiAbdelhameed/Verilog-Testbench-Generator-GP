/* Generated by Yosys 0.41+83 (git sha1 7045cf509, x86_64-w64-mingw32-g++ 13.2.1 -Os) */

/* cells_not_processed =  1  */
/* src = "mult17.v:1.1-21.10" */
module mult17(a, b, result);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  /* src = "mult17.v:2.17-2.18" */
  input [2:0] a;
  wire [2:0] a;
  /* src = "mult17.v:3.17-3.18" */
  input [2:0] b;
  wire [2:0] b;
  /* src = "mult17.v:4.22-4.28" */
  output [5:0] result;
  wire [5:0] result;
  NOT _063_ (
    .A(b[2]),
    .Y(_000_)
  );
  NOT _064_ (
    .A(b[1]),
    .Y(_001_)
  );
  NOT _065_ (
    .A(a[0]),
    .Y(_002_)
  );
  NOT _066_ (
    .A(b[0]),
    .Y(_003_)
  );
  NOT _067_ (
    .A(a[1]),
    .Y(_004_)
  );
  NOT _068_ (
    .A(a[2]),
    .Y(_005_)
  );
  AND _069_ (
    .A(b[0]),
    .B(a[1]),
    .Y(_006_)
  );
  AND _070_ (
    .A(a[2]),
    .B(_006_),
    .Y(_007_)
  );
  NOT _071_ (
    .A(_007_),
    .Y(_008_)
  );
  AND _072_ (
    .A(b[1]),
    .B(_007_),
    .Y(_009_)
  );
  NOT _073_ (
    .A(_009_),
    .Y(_010_)
  );
  AND _074_ (
    .A(a[2]),
    .B(_010_),
    .Y(_011_)
  );
  OR _075_ (
    .A(_005_),
    .B(_009_),
    .Y(_012_)
  );
  AND _076_ (
    .A(b[0]),
    .B(_011_),
    .Y(_013_)
  );
  OR _077_ (
    .A(_003_),
    .B(_012_),
    .Y(_014_)
  );
  AND _078_ (
    .A(a[0]),
    .B(b[0]),
    .Y(result[0])
  );
  NOT _079_ (
    .A(result[0]),
    .Y(_015_)
  );
  AND _080_ (
    .A(a[1]),
    .B(_015_),
    .Y(_016_)
  );
  OR _081_ (
    .A(_004_),
    .B(result[0]),
    .Y(_017_)
  );
  AND _082_ (
    .A(b[1]),
    .B(_008_),
    .Y(_018_)
  );
  OR _083_ (
    .A(_001_),
    .B(_007_),
    .Y(_019_)
  );
  AND _084_ (
    .A(_016_),
    .B(_018_),
    .Y(_020_)
  );
  OR _085_ (
    .A(_017_),
    .B(_019_),
    .Y(_021_)
  );
  AND _086_ (
    .A(a[0]),
    .B(_009_),
    .Y(_022_)
  );
  NOT _087_ (
    .A(_022_),
    .Y(_023_)
  );
  AND _088_ (
    .A(a[0]),
    .B(_006_),
    .Y(_024_)
  );
  AND _089_ (
    .A(_021_),
    .B(_023_),
    .Y(_025_)
  );
  OR _090_ (
    .A(_020_),
    .B(_022_),
    .Y(_026_)
  );
  AND _091_ (
    .A(_014_),
    .B(_025_),
    .Y(_027_)
  );
  OR _092_ (
    .A(_013_),
    .B(_026_),
    .Y(_028_)
  );
  AND _093_ (
    .A(b[2]),
    .B(a[0]),
    .Y(_029_)
  );
  OR _094_ (
    .A(_000_),
    .B(_002_),
    .Y(_030_)
  );
  AND _095_ (
    .A(_028_),
    .B(_030_),
    .Y(_031_)
  );
  AND _096_ (
    .A(_027_),
    .B(_029_),
    .Y(_032_)
  );
  OR _097_ (
    .A(_031_),
    .B(_032_),
    .Y(result[2])
  );
  AND _098_ (
    .A(a[0]),
    .B(_028_),
    .Y(_033_)
  );
  OR _099_ (
    .A(_002_),
    .B(_027_),
    .Y(_034_)
  );
  OR _100_ (
    .A(a[2]),
    .B(_024_),
    .Y(_035_)
  );
  NOT _101_ (
    .A(_035_),
    .Y(_036_)
  );
  AND _102_ (
    .A(_018_),
    .B(_035_),
    .Y(_037_)
  );
  OR _103_ (
    .A(_019_),
    .B(_036_),
    .Y(_038_)
  );
  AND _104_ (
    .A(a[1]),
    .B(_037_),
    .Y(_039_)
  );
  OR _105_ (
    .A(_004_),
    .B(_038_),
    .Y(_040_)
  );
  OR _106_ (
    .A(a[1]),
    .B(_037_),
    .Y(_041_)
  );
  AND _107_ (
    .A(_040_),
    .B(_041_),
    .Y(_042_)
  );
  NOT _108_ (
    .A(_042_),
    .Y(_043_)
  );
  OR _109_ (
    .A(_033_),
    .B(_042_),
    .Y(_044_)
  );
  AND _110_ (
    .A(_033_),
    .B(_042_),
    .Y(_045_)
  );
  OR _111_ (
    .A(_034_),
    .B(_043_),
    .Y(_046_)
  );
  AND _112_ (
    .A(_044_),
    .B(_046_),
    .Y(_047_)
  );
  AND _113_ (
    .A(b[2]),
    .B(_047_),
    .Y(_048_)
  );
  AND _114_ (
    .A(_000_),
    .B(_037_),
    .Y(_049_)
  );
  OR _115_ (
    .A(_048_),
    .B(_049_),
    .Y(result[3])
  );
  AND _116_ (
    .A(_040_),
    .B(_046_),
    .Y(_050_)
  );
  OR _117_ (
    .A(_039_),
    .B(_045_),
    .Y(_051_)
  );
  OR _118_ (
    .A(_011_),
    .B(_051_),
    .Y(_052_)
  );
  AND _119_ (
    .A(_011_),
    .B(_051_),
    .Y(_053_)
  );
  OR _120_ (
    .A(_012_),
    .B(_050_),
    .Y(_054_)
  );
  AND _121_ (
    .A(_052_),
    .B(_054_),
    .Y(_055_)
  );
  OR _122_ (
    .A(_000_),
    .B(_055_),
    .Y(_056_)
  );
  OR _123_ (
    .A(b[2]),
    .B(_009_),
    .Y(_057_)
  );
  AND _124_ (
    .A(_056_),
    .B(_057_),
    .Y(result[4])
  );
  OR _125_ (
    .A(_009_),
    .B(_053_),
    .Y(_058_)
  );
  AND _126_ (
    .A(b[2]),
    .B(_058_),
    .Y(result[5])
  );
  AND _127_ (
    .A(b[1]),
    .B(a[0]),
    .Y(_059_)
  );
  OR _128_ (
    .A(_006_),
    .B(_059_),
    .Y(_060_)
  );
  AND _129_ (
    .A(_006_),
    .B(_059_),
    .Y(_061_)
  );
  NOT _130_ (
    .A(_061_),
    .Y(_062_)
  );
  AND _131_ (
    .A(_060_),
    .B(_062_),
    .Y(result[1])
  );
endmodule
