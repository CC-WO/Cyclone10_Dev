/*
 ALU TTM4
*/

module ALU(
  input  wire       RST,
  input  wire       CLK,
  input  wire [3:0] X,
  input  wire [3:0] Y,
  input  wire [1:0] SEL,
  input  wire       nFA_EN,
  input  wire       nAND_EN,
  input  wire       nOR_EN,
  input  wire       nXOR_EN,
  output wire       Z_FLAG,
  output wire       C_FLAG,
  output wire [3:0] STOREDATA
  );

  wire [3:0] m_LOADDATA;
  wire [3:0] m_REGDATA;
  wire [3:0] m_ADDEROUT;
  wire       m_CO;
  wire       m_CI;
  wire [3:0] m_ANDOUT;
  wire [3:0] m_OROUT;
  wire [3:0] m_XOROUT;
  wire [7:0] m_DECODEROUT;
  wire [3:0] m_COUNTEROUT;
  wire [3:0] m_STOREDATA;


  LOGIC_74HC283 U_ADDER(
    .A(m_LOADDATA),
    .B(m_REGDATA),
    .CI(m_CI),
    .CO(m_CO),
    .SUM(m_ADDEROUT)
  );

  LOGIC_74HC125 U_ADDER_TRISTATE(
    .nA({nFA_EN,nFA_EN,nFA_EN,nFA_EN}),
    .B(m_ADDEROUT),
    .O(m_STOREDATA)
  );

  LOGIC_74HC08 U_AND(
    .A(m_LOADDATA),
    .B(m_REGDATA),
    .Y(m_ANDOUT)
  );

  LOGIC_74HC125 U_AND_TRISTATE(
    .nA({nAND_EN,nAND_EN,nAND_EN,nAND_EN}),
    .B(m_ANDOUT),
    .O(m_STOREDATA)
  );

  LOGIC_74HC32 U_OR(
    .A(m_LOADDATA),
    .B(m_REGDATA),
    .Y(m_OROUT)
  );

  LOGIC_74HC125 U_OR_TRISTATE(
    .nA({nOR_EN,nOR_EN,nOR_EN,nOR_EN}),
    .B(m_OROUT),
    .O(m_STOREDATA)
  );

  LOGIC_4030 U_XOR(
    .A(m_LOADDATA),
    .B(m_REGDATA),
    .X(m_XOROUT)
  );

  LOGIC_74HC125 U_XOR_TRISTATE(
    .nA({nXOR_EN,nXOR_EN,nXOR_EN,nXOR_EN}),
    .B(m_XOROUT),
    .O(m_STOREDATA)
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

  assign m_LOADDATA = X;
  assign m_REGDATA = Y;
  assign STOREDATA = m_STOREDATA;
  assign Z_FLAG = m_COUNTEROUT[0];
  assign C_FLAG = m_COUNTEROUT[1];

endmodule // ALU
