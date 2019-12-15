/*
 SRM2B256SLMX
*/


module LOGIC_SRM2B256SLMX(
  input wire        CLK,
  input wire [14:0] A,
  input wire        nCS,
  input wire        nOE,
  input wire        nWE,
  inout wire [7:0]  IO
  );

  wire [7:0] m_io_out;
  wire [7:0] m_io_in;

  SRAM U_MEMORY(
    .address (A),
    .clock (CLK),
    .data (m_io_in),
    .rden (~nOE),
    .wren (~nWE),
    .q (m_io_out)
  );

  assign m_io_in = (nOE == 1'b0) ? 8'hzz : IO;
  assign IO = (nOE == 1'b0) ? m_io_out : 8'hzz;

endmodule // LOGIC_SRM2B256SLMX
