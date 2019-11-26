/*
 74HC283
*/

module LOGIC_74HC283(
  input  wire [3:0] A,
  input  wire [3:0] B,
  input  wire       CI,
  output wire       CO,
  output wire [3:0] SUM
  );

  wire [4:0] m_SUM;

  assign m_SUM = A + B + CI;
  assign SUM = m_SUM[3:0];
  assign CO = m_SUM[4];

endmodule // LOGIC_74HC283
