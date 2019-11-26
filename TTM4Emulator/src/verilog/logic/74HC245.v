/*
 74HC245
*/

module LOGIC_74HC245(
  input wire       DIR,
  input wire       nOE,
  inout wire [7:0] A,
  inout wire [7:0] B
  );

  wire [7:0] m_A;
  wire [7:0] m_B;

  assign m_A = DIR ? B : 8'bzz;
  assign m_B = DIR ? 8'bzz : A;
  assign A = nOE ? 8'bzz : m_A;
  assign B = nOE ? 8'bzz : m_B;

endmodule // LOGIC_74HC245
