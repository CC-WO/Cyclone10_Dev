module INSTRUCTION_DECODER(
  input  wire       CLK,
  input  wire       Z_FLAG,
  input  wire       C_FLAG,
  input  wire [2:0] LR,
  input  wire [2:0] SR,
  input  wire [4:0] OP,
  output wire       nA_OUT,
  output wire       nB_OUT,
  output wire       nIRU_OUT,
  output wire       nIRD_OUT,
  output wire       nJRU_OUT,
  output wire       nJRD_OUT,
  output wire       nA_ST,
  output wire       nB_ST,
  output wire       nORU_ST,
  output wire       nORD_ST,
  output wire       nJRU_ST,
  output wire       nJRD_ST,
  output wire [1:0] SEL,
  output wire       nFA_EN,
  output wire       nAND_EN,
  output wire       nOR_EN,
  output wire       nXOR_EN,
  output wire       nSK_EN,
  output wire       SP_D_nU,
  output wire       PC_nLD,
  output wire       SPC
  );

  wire [4:0] m_nOP;
  wire m_nFA_EN;
  wire m_nAND_EN;
  wire m_nOR_EN;
  wire m_nXOR_EN;
  wire m_nSK_EN;
  wire m_SP_D_nU;
  wire m_PC_nLD;
  wire m_PC_nLD_1;
  wire m_PC_nLD_2;
  wire m_PC_nLD_3;
  wire m_COM2;
  wire m_COM3;
  wire m_nQ;

  assign m_nOP = ~OP;
  assign m_nFA_EN = m_nOP[4] | m_nOP[2];
  assign m_nAND_EN = NAND4IN(m_nOP[0], OP[4], m_nOP[1], m_nOP[2]);
  assign m_nOR_EN  = NAND4IN(OP[4], m_nOP[2], OP[1], 1'b1);
  assign m_nXOR_EN = NAND4IN(1'b1, OP[0], m_nOP[1], m_nOP[2]);
  assign m_nSK_EN  = NAND4IN(OP[3], m_nOP[2], m_nOP[1], 1'b1);
  assign m_SP_D_nU = nSK_EN & OP[0];
  assign m_PC_nLD_1 = m_COM3 & OP[1];
  assign m_PC_nLD_2 = ~(OP[2] | OP[1]);
  assign m_PC_nLD_3 = m_PC_nLD_1 | m_PC_nLD_2;
  assign m_PC_nLD   = m_PC_nLD_3 | ~OP[3];

  LOGIC_74HC221 U_MULTIVIBRATOR(
    .nA(1'b0),
    .B(m_SP_D_nU),
    .nR(1'b1),
    .Q(),
    .nQ(m_nQ),
    .CxRx(1'b1),
    .nC(1'b0)
  );

  wire [1:0] m_SEL;
  wire m_ST_EN;
  wire [7:0] m_MPOUT1;
  wire [7:0] m_MPOUT2;

  assign m_SEL[0] = AND4IN(OP[4], ~SR[2], SR[0], LR[1]);
  assign m_SEL[1] = ~m_nFA_EN & OP[1];
  assign m_ST_EN  = m_SEL[1] & OP[0];

  LOGIC_74HC138 U_MULTIPLEXER1(
    .A(LR),
    .E(3'b100),
    .nY(m_MPOUT1)
  );

  LOGIC_74HC138 U_MULTIPLEXER2(
    .A(SR),
    .E({1'b1, m_ST_EN, 1'b0}),
    .nY(m_MPOUT2)
  );

  LOGIC_4053 U_MULTIPLEXER3(
    .INH(1'b0),
    .A(m_SP_D_nU),
    .B(OP[2]),
    .C(OP[0]),
    .Y0({CLK,  C_FLAG, m_COM2}),
    .Y1({m_nQ, Z_FLAG, ~m_COM2}),
    .COM({SPC, m_COM2, m_COM3})
  );

  function NAND4IN(
    input A, input B, input C, input D
    );
    begin
      NAND4IN = ~(A & B & C & D);
    end
  endfunction

  function AND4IN(
    input A, input B, input C, input D
    );
    begin
      AND4IN = (A & B & C & D);
    end
  endfunction

  assign SEL      = m_SEL;
  assign nFA_EN   = m_nFA_EN;
  assign nAND_EN  = m_nAND_EN;
  assign nOR_EN   = m_nOR_EN;
  assign nXOR_EN  = m_nXOR_EN;
  assign nSK_EN   = m_nSK_EN;
  assign SP_D_nU  = m_SP_D_nU;
  assign PC_nLD   = m_PC_nLD;
  assign nA_OUT   = m_MPOUT1[2];
  assign nB_OUT   = m_MPOUT1[3];
  assign nIRU_OUT = m_MPOUT1[4];
  assign nIRD_OUT = m_MPOUT1[5];
  assign nJRU_OUT = m_MPOUT1[6];
  assign nJRD_OUT = m_MPOUT1[7];
  assign nA_ST    = m_MPOUT2[2];
  assign nB_ST    = m_MPOUT2[3];
  assign nORU_ST  = m_MPOUT2[4];
  assign nORD_ST  = m_MPOUT2[5];
  assign nJRU_ST  = m_MPOUT2[6];
  assign nJRD_ST  = m_MPOUT2[7];

endmodule // INSTRUCTION_DECODER
