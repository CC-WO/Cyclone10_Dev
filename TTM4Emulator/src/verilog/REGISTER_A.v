/*
 REGISTER_A
*/

module REGISTER_A(
  input wire       RST,
  input wire       CLK,
  inout wire [3:0] STOREBUS,
  inout wire [3:0] LOADBUS,
  input wire       nA_ST,
  input wire       nA_OUT
);

  wire [3:0] m_REGOUT;
  wire [3:0] m_DATAIN;
  wire       m_nLOAD;

  LOGIC_74HC161 U_COUNTER(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nA_ST),
    .ENP(1'b0),
    .INT(1'b0),
    .DATAIN(m_DATAIN),
    .CO(),
    .COUNTER(m_REGOUT)
  );

  LOGIC_74HC125 U_TRISTATE(
    .nA({nA_OUT,nA_OUT,nA_OUT,nA_OUT}),
    .B(m_REGOUT),
    .O(LOADBUS)
  );

  assign m_DATAIN = (nA_ST) ? 4'bzzzz : STOREBUS;

endmodule // REGISTER_A
