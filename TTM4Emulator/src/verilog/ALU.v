/*
 ALU TTM4
*/

module ALU(
  input  wire       RST,
  input  wire       CLK,
  inout  wire [3:0] STOREBUS,
  inout  wire [3:0] LOADBUS,
  input  wire [3:0] Y,
  input  wire [3:0] IM,
  input  wire [1:0] SEL,
  input  wire       nFA_EN,
  input  wire       nAND_EN,
  input  wire       nOR_EN,
  input  wire       nXOR_EN,
  output wire       Z_FLAG,
  output wire       C_FLAG
  );

  wire       m_S;
  wire [3:0] m_Y;
  wire [3:0] m_REGDATA;

  wire [3:0] m_ADDERIN;
  wire [3:0] m_ADDEROUT;
  wire [3:0] m_TRIADDEROUT;
  wire       m_CO;
  wire       m_CI;

  wire [3:0] m_ANDIN;
  wire [3:0] m_ANDOUT;
  wire [3:0] m_TRIANDOUT;

  wire [3:0] m_ORIN;
  wire [3:0] m_OROUT;
  wire [3:0] m_TRIOROUT;

  wire [3:0] m_XORIN;
  wire [3:0] m_XOROUT;
  wire [3:0] m_TRIXOROUT;

  wire [7:0] m_DECODEROUT;
  wire [3:0] m_COUNTEROUT;
  wire [3:0] m_STOREDATA;

  assign m_ADDERIN = LOADBUS;
  assign m_ANDIN   = LOADBUS;
  assign m_ORIN    = LOADBUS;
  assign m_XORIN   = LOADBUS;

  assign STOREBUS  = (nFA_EN)  ? 4'bzzzz : m_TRIADDEROUT;
  assign STOREBUS  = (nAND_EN) ? 4'bzzzz : m_TRIANDOUT;
  assign STOREBUS  = (nOR_EN)  ? 4'bzzzz : m_TRIOROUT;
  assign STOREBUS  = (nXOR_EN) ? 4'bzzzz : m_TRIXOROUT;

  assign Z_FLAG = m_COUNTEROUT[0];
  assign C_FLAG = m_COUNTEROUT[1];

  LOGIC_74HC257 U_Y_SELECTOR(
    .S(SEL[0]),
    .nOE(1'b0),
    .IN0(IM),
    .IN1(Y),
    .Y(m_Y)
  );

  LOGIC_4030 U_Y_XOR(
    .A(m_Y),
    .B({SEL[1], SEL[1], SEL[1], SEL[1]}),
    .X(m_REGDATA)
  );

  LOGIC_74HC283 U_ADDER(
    .A(m_ADDERIN),
    .B(m_REGDATA),
    .CI(SEL[1]),
    .CO(m_CO),
    .SUM(m_ADDEROUT)
  );

  LOGIC_74HC125 U_ADDER_TRISTATE(
    .nA({nFA_EN,nFA_EN,nFA_EN,nFA_EN}),
    .B(m_ADDEROUT),
    .O(m_TRIADDEROUT)
  );

  LOGIC_74HC08 U_AND(
    .A(m_ANDIN),
    .B(m_REGDATA),
    .Y(m_ANDOUT)
  );

  LOGIC_74HC125 U_AND_TRISTATE(
    .nA({nAND_EN,nAND_EN,nAND_EN,nAND_EN}),
    .B(m_ANDOUT),
    .O(m_TRIANDOUT)
  );

  LOGIC_74HC32 U_OR(
    .A(m_ORIN),
    .B(m_REGDATA),
    .Y(m_OROUT)
  );

  LOGIC_74HC125 U_OR_TRISTATE(
    .nA({nOR_EN,nOR_EN,nOR_EN,nOR_EN}),
    .B(m_OROUT),
    .O(m_TRIOROUT)
  );

  LOGIC_4030 U_XOR(
    .A(m_XORIN),
    .B(m_REGDATA),
    .X(m_XOROUT)
  );

  LOGIC_74HC125 U_XOR_TRISTATE(
    .nA({nXOR_EN,nXOR_EN,nXOR_EN,nXOR_EN}),
    .B(m_XOROUT),
    .O(m_TRIXOROUT)
  );

  LOGIC_74HC259 U_DECODER(
    .A(m_ADDEROUT[2:0]),
    .D(1'b1),
    .nLE(m_ADDEROUT[3]),
    .nMR(1'b0),
    .Q(m_DECODEROUT)
  );

  LOGIC_74HC161 U_COUNTER(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nFA_EN),
    .ENP(1'b0),
    .INT(1'b0),
    .DATAIN({2'b00, m_CO, m_DECODEROUT[0]}),
    .CO(),
    .COUNTER(m_COUNTEROUT)
  );

endmodule // ALU
