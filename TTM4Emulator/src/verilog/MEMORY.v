module MEMORY(
  input wire        CLK,
  inout wire [3:0]  IM,
  inout wire [3:0]  LR,
  inout wire [3:0]  SR,
  inout wire [4:0]  OP,
  input wire        nOE,
  input wire        nWE,
  input wire [7:0]  ADD
  );

  wire [15:0] m_MEM1_A;
  wire [15:0] m_MEM2_A;
  wire [ 7:0] m_MEM1_IO;
  wire [ 7:0] m_MEM2_IO;

  LOGIC_SRM2B256SLMX U_SRAM1(
    .CLK(CLK),
    .A(m_MEM1_A),
    .nCS(1'b0),
    .nOE(nOE),
    .nWE(nWE),
    .IO(m_MEM1_IO)
  );

  LOGIC_SRM2B256SLMX U_SRAM2(
    .CLK(CLK),
    .A(m_MEM2_A),
    .nCS(1'b0),
    .nOE(nOE),
    .nWE(nWE),
    .IO(m_MEM2_IO)
  );

  assign IM = m_MEM1_IO[3:0];
  assign LR = m_MEM1_IO[6:4];
  assign SR = {m_MEM2_IO[1:0], m_MEM1_IO[7]};
  assign OP = m_MEM2_IO[6:2];
  assign m_MEM1_A = {7'b0000000, ADD};
  assign m_MEM2_A = {7'b0000000, ADD};

endmodule // MEMORy
