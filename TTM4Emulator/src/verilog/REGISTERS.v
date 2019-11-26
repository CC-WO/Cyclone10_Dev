module REGISTERS(
    input  wire       RST,
    input  wire       CLK,
    input  wire       nPC_LD,
    input  wire       nPC_OPEN,
    input  wire       nJRD_ST,
    input  wire       nJRU_ST,
    input  wire       nORD_ST,
    input  wire       nORU_ST,
    input  wire       nJRD_OUT,
    input  wire       nJRU_OUT,
    input  wire       nIRD_OUT,
    input  wire       nIRU_OUT,
    output wire [7:0] PA,
    inout  wire [3:0] LOADBUS,
    inout  wire [3:0] STOREBUS_JP1,
    inout  wire [3:0] STOREBUS_JP2,
    inout  wire [3:0] STOREBUS_OR1,
    inout  wire [3:0] STOREBUS_OR2,
    output      [7:0] OR,
    input       [7:0] IR
  );

  wire [3:0] m_JP1;
  wire [3:0] m_JP2;
  wire [3:0] m_OR1;
  wire [3:0] m_OR2;
  wire [7:0] m_PA;

  assign OR = {m_OR2, m_OR1};
  assign PA = m_PA;

  PC U_PC(
    .RST(RST),
    .CLK(CLK),
    .nPC_LD(nPC_LD),
    .nPC_OPEN(nPC_OPEN),
    .DATAIN({m_JP2, m_JP1}),
    .PA(m_PA)
  );

  LOGIC_74HC161 U_COUNTER1(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nJRD_ST),
    .ENP(1'b0),
    .INT(1'b1),
    .DATAIN(STOREBUS_JP1),
    .CO(),
    .COUNTER(m_JP1)
  );

  LOGIC_74HC161 U_COUNTER2(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nJRU_ST),
    .ENP(1'b0),
    .INT(1'b1),
    .DATAIN(STOREBUS_JP2),
    .CO(),
    .COUNTER(m_JP2)
  );

  LOGIC_74HC161 U_COUNTER3(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nORD_ST),
    .ENP(1'b0),
    .INT(1'b1),
    .DATAIN(STOREBUS_OR1),
    .CO(),
    .COUNTER(m_OR1)
  );

  LOGIC_74HC161 U_COUNTER4(
    .CK(CLK),
    .nCLR(RST),
    .nLOAD(nORU_ST),
    .ENP(1'b0),
    .INT(1'b1),
    .DATAIN(STOREBUS_OR1),
    .CO(),
    .COUNTER(m_OR2)
  );

  LOGIC_74AC125 U_JP_TRISTATE1(
    .nA({nJRD_OUT, nJRD_OUT, nJRD_OUT, nJRD_OUT}),
    .B(m_JP1),
    .O(LOADBUS)
  );

  LOGIC_74AC125 U_JP_TRISTATE2(
    .nA({nJRU_OUT, nJRU_OUT, nJRU_OUT, nJRU_OUT}),
    .B(m_JP2),
    .O(LOADBUS)
  );

  LOGIC_74AC125 U_IR_TRISTATE1(
    .nA({nIRD_OUT, nIRD_OUT, nIRD_OUT, nIRD_OUT}),
    .B(IR[3:0]),
    .O(LOADBUS)
  );

  LOGIC_74AC125 U_IR_TRISTATE2(
    .nA({nIRU_OUT, nIRU_OUT, nIRU_OUT, nIRU_OUT}),
    .B(IR[7:4]),
    .O(LOADBUS)
  );

endmodule // REGISTERS
