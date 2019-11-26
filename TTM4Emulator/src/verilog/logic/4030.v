/*
 TC4030
*/

module LOGIC_4030(
  input  wire [3:0] A,
  input  wire [3:0] B,
  output wire [3:0] X
  );

  assign X = A ^ B;

endmodule // LOGIC_4030
