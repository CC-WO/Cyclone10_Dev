module SP(
  input  wire       RST,
  input  wire       CLK,
  input  wire       nSK_EN,
  input  wire       SP_D_nU,
  input  wire       SPC,
  output wire [7:0] SP,
  inout  wire [3:0] STOREBUS
  );

  wire        m_nRC;
  wire        m_nQ;
  wire [14:0] m_A;
  wire [7:0]  m_SP;
  wire [7:0]  m_IO;
  wire [3:0]  m_Q1;
  wire [3:0]  m_Q2;
  wire [7:0]  m_TRI_A;
  wire [7:0]  m_TRI_B;

  assign STOREBUS[3:0] = (SP_D_nU == 1'b0) ? 4'hz              : m_TRI_A;
  assign m_TRI_A       = (SP_D_nU == 1'b0) ? {STOREBUS, 4'h0}  : 8'hzz;
  assign m_TRI_B       = (SP_D_nU == 1'b0) ? 8'hzz             : {4'h0, m_IO[3:0]};
  assign m_IO          = (SP_D_nU == 1'b0) ? 8'bzz             : {4'h0, m_TRI_B[3:0]};
  assign m_A      = {7'b000_0000, m_Q2, m_Q1};
  assign SP       = m_A;

  LOGIC_SRM2B256SLMX U_SRAM(
    .CLK(CLK),
    .A(m_A),
    .nCS(1'b0),
    .nOE(SP_D_nU),
    .nWE(m_nQ),
    .IO(m_IO)
  );

  LOGIC_74HC245 U_TRISTATE(
    .DIR(SP_D_nU),
    .nOE(nSK_EN),
    .A(m_TRI_A),
    .B(m_TRI_B)
  );

  LOGIC_74HC221 U_MULTIVIBIVRATOR(
    .nA(CLK),
    .B(SP_D_nU),
    .nR(1'b1),
    .Q(),
    .nQ(m_nQ),
    .CxRx(1'b1),
    .nC(1'b0)
  );

  LOGIC_74HC191 U_COUNTER1(
    .nCE(nSK_EN),
    .CP(SPC),
    .nUD(SP_D_nU),
    .nPL(RST),
    .TC(),
    .nRC(m_nRC),
    .D(4'hF),
    .Q(m_Q1)
  );

  LOGIC_74HC191 U_COUNTER2(
    .nCE(m_nRC),
    .CP(SPC),
    .nUD(SP_D_nU),
    .nPL(RST),
    .TC(),
    .nRC(),
    .D(4'hF),
    .Q(m_Q2)
  );

endmodule // SP
