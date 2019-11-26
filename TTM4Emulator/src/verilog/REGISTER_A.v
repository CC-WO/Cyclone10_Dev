/*
 REGISTER_A
*/

module REGISTER_A(
  input  wire       RST,
  input  wire       CLK,
  input  wire       nA_ST,
  input  wire       nA_OUT,
  input  wire [3:0] STOREDATA,
  output wire [3:0] LOADDATA
);

  wire [3:0] m_REGOUT;

  LOGIC_74HC161 U_74HC161(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nA_ST),
    .ENP(1'b0),
    .INT(1'b0),
    .DATAIN(STOREDATA),
    .CO(),
    .COUNTER(m_REGOUT)
  );

  LOGIC_74AC125 U_74AC125(
    .nA({nA_OUT,nA_OUT,nA_OUT,nA_OUT}),
    .B(m_REGOUT),
    .O(LOADDATA)
  );

endmodule // REGISTER_A
