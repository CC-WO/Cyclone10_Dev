/***********
* TTM4 CPU *
***********/

module TTM4(
  input  wire RST,
  input  wire CLK
  );

  wire [14:0]  m_INSTRUCTION;
  wire [7:0]   m_PC;
  wire [3:0]   m_STOREBUS;
  wire [3:0]   m_LOADBUS;
  wire [3:0]   m_COUNTERBUS;
  wire [7:0]   m_SPBUS;
  wire [7:0]   m_OR;
  wire [7:0]   m_IR;
  wire         m_nA_ST;
  wire         m_nB_ST;
  wire         m_nA_OUT;
  wire         m_nB_OUT;
  wire         m_nORU_ST;
  wire         m_nORD_ST;
  wire         m_nJRU_ST;
  wire         m_nJRD_ST;
  wire         m_nIRU_OUT;
  wire         m_nIRD_OUT;
  wire         m_nJRU_OUT;
  wire         m_nJRD_OUT;
  wire [1:0]   m_SEL;
  wire         m_nFA_EN;
  wire         m_nAND_EN;
  wire         m_nOR_EN;
  wire         m_nXOR_EN;
  wire         m_Z_FLAG;
  wire         m_C_FLAG;
  wire         m_nOE;
  wire         m_nWE;
  wire         m_nSK_EN;
  wire         m_SP_D_nU;
  wire         m_nPC_LD;
  wire         m_SPC;
  wire         m_nPC_OPEN;

  REGISTERS U_REGISTERS(
    .RST(RST),
    .CLK(CLK),
    .nPC_LD(m_nPC_LD),
    .nPC_OPEN(m_nPC_OPEN),
    .nJRD_ST(m_nJRD_ST),
    .nJRU_ST(m_nJRU_ST),
    .nORD_ST(m_nORD_ST),
    .nORU_ST(m_nORU_ST),
    .nJRD_OUT(m_nJRD_OUT),
    .nJRU_OUT(m_nJRU_OUT),
    .nIRD_OUT(m_nIRD_OUT),
    .nIRU_OUT(m_nIRU_OUT),
    .PA(m_PC),
    .LOADBUS(m_LOADBUS),
    .STOREBUS(m_STOREBUS),
    .OR(m_OR),
    .IR(m_IR)
  );

  MEMORY U_MEMORY_BLOCK(
    .CLK(CLK),
    .IM(m_INSTRUCTION[3:0]),
    .LR(m_INSTRUCTION[6:4]),
    .SR(m_INSTRUCTION[9:7]),
    .OP(m_INSTRUCTION[14:10]),
    .nOE(m_nOE),
    .nWE(m_nWE),
    .ADD(m_PC)
  );

  INSTRUCTION_DECODER U_INSTRUCTION_DECODER(
    .CLK(CLK),
    .Z_FLAG(m_Z_FLAG),
    .C_FLAG(m_C_FLAG),
    .LR(m_INSTRUCTION[6:4]),
    .SR(m_INSTRUCTION[9:7]),
    .OP(m_INSTRUCTION[14:10]),
    .nA_OUT(m_nA_OUT),
    .nB_OUT(m_nB_OUT),
    .nIRU_OUT(m_nIRU_OUT),
    .nIRD_OUT(m_nIRD_OUT),
    .nJRU_OUT(m_nJRU_OUT),
    .nJRD_OUT(m_nJRD_OUT),
    .nA_ST(m_nA_ST),
    .nB_ST(m_nB_ST),
    .nORU_ST(m_nORU_ST),
    .nORD_ST(m_nORD_ST),
    .nJRU_ST(m_nJRU_ST),
    .nJRD_ST(m_nJRD_ST),
    .SEL(m_SEL),
    .nFA_EN(m_nFA_EN),
    .nAND_EN(m_nAND_EN),
    .nOR_EN(m_nOR_EN),
    .nXOR_EN(m_nXOR_EN),
    .nSK_EN(m_nSK_EN),
    .SP_D_nU(m_SP_D_nU),
    .nPC_LD(m_nPC_LD),
    .SPC(m_SPC)
  );

  SP U_STACK_POINTER(
    .RST(RST),
    .CLK(CLK),
    .nSK_EN(m_nSK_EN),
    .SP_D_nU(m_SP_D_nU),
    .SPC(m_SPC),
    .SP(m_SPBUS),
    .STOREBUS(m_STOREBUS)
  );

  REGISTER_A U_REGSITERA(
    .RST(RST),
    .CLK(CLK),
    .nA_ST(m_nA_ST),
    .nA_OUT(m_nA_OUT),
    .STOREDATA(m_STOREBUS),
    .LOADDATA(m_LOADBUS)
  );

  REGISTER_B U_REGSITERB(
    .RST(RST),
    .CLK(CLK),
    .nB_ST(m_nB_ST),
    .nB_OUT(m_nB_OUT),
    .STOREDATA(m_STOREBUS),
    .LOADDATA(m_LOADBUS),
    .COUNTER(m_COUNTERBUS)
  );

  ALU U_ALU(
    .RST(RST),
    .CLK(CLK),
    .X(m_LOADBUS),
    .Y(m_COUNTERBUS),
    .SEL(m_SEL),
    .nFA_EN(m_nFA_EN),
    .nAND_EN(m_nAND_EN),
    .nOR_EN(m_nOR_EN),
    .nXOR_EN(m_nXOR_EN),
    .Z_FLAG(m_Z_FLAG),
    .C_FLAG(m_C_FLAG),
    .STOREDATA(m_STOREBUS)
  );

endmodule
