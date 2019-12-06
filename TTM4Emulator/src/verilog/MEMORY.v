module MEMORY(
  input wire        CLK,
  inout wire [3:0]  IM,
  inout wire [2:0]  LR,
  inout wire [2:0]  SR,
  inout wire [4:0]  OP,
  input wire        nOE,
  input wire        nWE,
  input wire [7:0]  ADD
  );

  wire [14:0] m_MEM1_A;
  wire [14:0] m_MEM2_A;
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

  assign IM             = (nOE == 1'b0) ? m_MEM1_IO[3:0] : 4'bzzzz;
  assign LR             = (nOE == 1'b0) ? m_MEM1_IO[6:4] : 3'bzzz;
  assign SR[0]          = (nOE == 1'b0) ? m_MEM1_IO[7]   : 1'bz;
  assign SR[2:1]        = (nOE == 1'b0) ? m_MEM2_IO[1:0] : 2'bzz;
  assign OP             = (nOE == 1'b0) ? m_MEM1_IO[6:2] : 5'bzzzzz;
  assign m_MEM1_IO[3:0] = (nOE == 1'b0) ? 4'bzzzz        : IM;
  assign m_MEM1_IO[6:4] = (nOE == 1'b0) ? 3'bzzz         : LR;
  assign m_MEM1_IO[7]   = (nOE == 1'b0) ? 1'bz           : SR[0];
  assign m_MEM2_IO[1:0] = (nOE == 1'b0) ? 2'bzz          : SR[2:1];
  assign m_MEM2_IO[6:2] = (nOE == 1'b0) ? 5'bzzzzz       : OP;
  assign m_MEM2_IO[7]   = (nOE == 1'b0) ? 1'bz: 1'b0;
  assign m_MEM1_A = {7'b0000000, ADD};
  assign m_MEM2_A = {7'b0000000, ADD};

endmodule // MEMORy
