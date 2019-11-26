/*
 4053
*/

module LOGIC_4053(
  input  wire       INH,
  input  wire       A,
  input  wire       B,
  input  wire       C,
  input  wire [2:0] Y0,
  input  wire [2:0] Y1,
  output wire [2:0] COM
  );

  wire [2:0] m_COM;

  assign m_COM[0] = A ? Y1[0] : Y0[0];
  assign m_COM[1] = B ? Y1[1] : Y0[1];
  assign m_COM[2] = C ? Y1[2] : Y0[2];

  assign COM = INH ? 3'bx : m_COM;

endmodule // LOGIC_4053
