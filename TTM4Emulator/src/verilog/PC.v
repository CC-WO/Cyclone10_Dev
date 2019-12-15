module PC(
  input  wire       RST,
  input  wire       CLK,
  input  wire       PC_nLD,
  input  wire       nPC_OPEN,
  input  wire [7:0] DATAIN,
  output wire [7:0] PA
);

  wire [3:0] m_COUNTEROUT1;
  wire [3:0] m_COUNTEROUT2;
  wire       m_CO;

  LOGIC_74HC161 U_COUNTER1(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(PC_nLD),
    .ENP(1'b1),
    .INT(1'b1),
    .DATAIN(DATAIN[3:0]),
    .CO(m_CO),
    .COUNTER(m_COUNTEROUT1)
  );

  LOGIC_74HC161 U_COUNTER2(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(PC_nLD),
    .ENP(1'b1),
    .INT(m_CO),
    .DATAIN(DATAIN[7:4]),
    .CO(),
    .COUNTER(m_COUNTEROUT2)
  );

  LOGIC_74HC373 U_TRISTATE(
    .D({m_COUNTEROUT2, m_COUNTEROUT1}),
    .nOE(nPC_OPEN),
    .LE(1'b1),
    .Q(PA)
  );

endmodule // PC
