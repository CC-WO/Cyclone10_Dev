/*
 74HC125
*/

module LOGIC_74HC125(
  input  wire [3:0] nA,
  input  wire [3:0] B,
  output wire [3:0] O
  );

  assign O[0] = nA[0] ? B[0] : 1'bz;
  assign O[1] = nA[1] ? B[1] : 1'bz;
  assign O[2] = nA[2] ? B[2] : 1'bz;
  assign O[3] = nA[3] ? B[3] : 1'bz;

endmodule // LOGIC_74HC125
