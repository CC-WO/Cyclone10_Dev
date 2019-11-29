module SP(
  input wire       RST,
  input wire       CLK,
  input wire       nSK_EN,
  input wire       SP_D_nU,
  input wire       SPC,
  inout wire [7:0] SP,
  inout wire [3:0] STOREBUS
  );

  wire m_nRC;
  wire m_nQ;
  wire [7:0] m_IO;
  wire [3:0] m_Q1;
  wire [3:0] m_Q2;
  wire [3:0] m_TRI_B;

  assign m_IO = {4'b0000, m_TRI_B};

  LOGIC_SRM2B256SLMX U_SRAM(
    .CLK(CLK),
    .A({7'b0000000, SP}),
    .nCS(1'b0),
    .nOE(SP_D_nU),
    .nWE(m_nQ),
    .IO(m_IO)
  );

  LOGIC_74HC245 U_TRISTATE(
    .DIR(SP_D_nU),
    .nOE(nSK_EN),
    .A(STOREBUS),
    .B(m_TRI_B)
  );

  LOGIC_74HC221 U_MULTIVIBIVRATOR(
    .CLK(CLK),
    .nA(CLK),
    .B(SP_D_nU),
    .nR(1'b1),
    .Q(),
    .nQ(m_nQ),
    .CxRx(1'b1),
    .nC(1'b0)
  );

  LOGIC_74HC191 U_COUNTER1(
    .nCE(),
    .CP(CLK),
    .nUD(SP_D_nU),
    .nPL(RST),
    .TC(),
    .nRC(m_nRC),
    .D(4'hF),
    .Q(m_Q1)
  );

  LOGIC_74HC191 U_COUNTER2(
    .nCE(m_nRC),
    .CP(CLK),
    .nUD(SP_D_nU),
    .nPL(RST),
    .TC(),
    .nRC(),
    .D(4'hF),
    .Q(m_Q2)
  );

  assign SP = {m_Q2, m_Q1};

endmodule // SP
