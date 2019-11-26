/*
 74HC257
*/

module LOGIC_74HC257(
  input  wire       S,
  input  wire       nOE,
  input  wire [3:0] IN0,
  input  wire [3:0] IN1,
  output wire [3:0] Y
  );

  wire [3:0] m_SELEOUT;

  assign m_SELEOUT[0] = S ? IN1[0] : IN0[0];
  assign m_SELEOUT[1] = S ? IN1[1] : IN0[1];
  assign m_SELEOUT[2] = S ? IN1[2] : IN0[2];
  assign m_SELEOUT[3] = S ? IN1[3] : IN0[3];

  assign Y[0] = nOE ? 1'bz : m_SELEOUT[0];
  assign Y[1] = nOE ? 1'bz : m_SELEOUT[1];
  assign Y[2] = nOE ? 1'bz : m_SELEOUT[2];
  assign Y[3] = nOE ? 1'bz : m_SELEOUT[3];

endmodule // LOGIC_74HC257
