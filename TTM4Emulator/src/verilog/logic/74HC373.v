/*
 74HC373
*/

module LOGIC_74HC373(
  input  wire [7:0] D,
  input  wire       nOE,
  input  wire       LE,
  output wire [7:0] Q
);

  reg [7:0] m_Q;

  always @(posedge LE) begin
    if (LE == 1'b1) begin
      m_Q <= D;
    end
    else begin
      m_Q <= m_Q;
    end
  end

  assign Q = nOE ? 8'hzz : m_Q;

endmodule // LOGIC_74HC373
