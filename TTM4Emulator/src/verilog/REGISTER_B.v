/*
 REGISTER_B
*/

module REGISTER_B(
  input  wire       RST,
  input  wire       CLK,
  input  wire       nB_ST,
  input  wire       nB_OUT,
  input  wire [3:0] STOREDATA,
  output wire [3:0] LOADDATA,
  output wire [3:0] COUNTER
  );

  wire [3:0] m_REGOUT;
  wire [3:0] m_LOADDATA;

  LOGIC_74HC161 U_74HC161(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nB_ST),
    .ENP(1'b0),
    .INT(1'b0),
    .DATAIN(STOREDATA),
    .CO(),
    .COUNTER(m_REGOUT)
  );

  LOGIC_74AC125 U_74AC125(
    .nA({nB_OUT,nB_OUT,nB_OUT,nB_OUT}),
    .B(m_REGOUT),
    .O(m_LOADDATA)
  );

  assign LOADDATA = m_LOADDATA;
  assign COUNTER = m_REGOUT;

endmodule // REGISTER_B
