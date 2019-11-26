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

  reg sramclk;
  wire m_sramclk;
  wire [7:0] m_io_out;
  wire [7:0] m_io_in;

  always @(posedge CLK) begin
    if ((nWE == 1'b0 & nOE == 1'b1) | (nWE == 1'b1 & nOE == 1'b0)) begin
      sramclk <= 1'b1;
    end
    else begin
      sramclk <= 1'b0;
    end
  end

  SRAM U_MEMORY(
    .address (A),
    .clock (m_sramclk),
    .data (m_io_in),
    .rden (~nOE),
    .wren (~nWE),
    .q (m_io_out)
  );

  assign m_sramclk = sramclk;
  assign IO = (nOE == 1'b0) ? m_io_out : m_io_in;

endmodule // LOGIC_SRM2B256SLMX
