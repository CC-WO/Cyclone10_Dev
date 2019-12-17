/*
 REGISTER_B
*/

module REGISTER_B(
  input  wire       RST,
  input  wire       CLK,
  inout  wire [3:0] STOREBUS,
  inout  wire [3:0] LOADBUS,
  input  wire       nB_ST,
  input  wire       nB_OUT,
  output wire [3:0] COUNTER
  );

  wire [3:0] m_REGOUT;
  wire [3:0] m_DATAIN;

  LOGIC_74HC161 U_COUNTER(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nB_ST),
    .ENP(1'b0),
    .INT(1'b0),
    .DATAIN(m_DATAIN),
    .CO(),
    .COUNTER(m_REGOUT)
  );

  LOGIC_74HC125 U_TRISTATE(
    .nA({nB_OUT,nB_OUT,nB_OUT,nB_OUT}),
    .B(m_REGOUT),
    .O(LOADBUS)
  );

  assign m_DATAIN = (nB_ST) ? 4'bzzzz : STOREBUS;
  assign COUNTER  = m_REGOUT;

endmodule // REGISTER_B
