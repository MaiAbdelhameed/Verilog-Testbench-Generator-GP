// ====================================================================
// File Name: Accumulator.v
// Description: Accumulate Result1,2,3 and currentResult
//
// Date: 01/01/2019
// Designers: Maor Assayag, Refael Shetrit
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
// ====================================================================
`include "Parameters.v"
module Accumulator (Result1, Result2, Result3, CurrentResult, NewResult) ;
    
  // DEFINE INPUTS VARS
   input  wire signed  [(2*(`WeightPrecision + `PixelWidth)):0]   Result1; 
   input  wire signed  [(2*(`WeightPrecision + `PixelWidth)):0]   Result2;
   input  wire signed  [(2*(`WeightPrecision + `PixelWidth)):0]   Result3;
   input  wire signed  [`resultWidth - 1: 0]   CurrentResult;
  
  // DEFINE OUTPUTS VARS
   output wire signed  [`resultWidth - 1: 0]   NewResult;
  
  // BODY
   assign NewResult = CurrentResult + Result1 + Result2 + Result3;

endmodule