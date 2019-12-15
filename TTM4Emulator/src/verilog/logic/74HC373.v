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

  always @(nOE or LE or D) begin
    if (nOE == 1'b1) begin
      m_Q <= 8'hzz;
    end
    else begin
      if (LE == 1'b1) begin
        m_Q <= D;
      end
      else begin
        m_Q <= m_Q;
      end
    end
  end

  assign Q = m_Q;

endmodule // LOGIC_74HC373
