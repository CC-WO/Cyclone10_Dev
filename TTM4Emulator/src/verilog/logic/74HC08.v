/*
 74HC08
*/

module LOGIC_74HC08(
  input  wire [3:0] A,
  input  wire [3:0] B,
  output wire [3:0] Y
  );

  assign Y = A & B;

endmodule // LOGIC_74HC08
