/*
 74HC161
*/

module LOGIC_74HC191(
  input   wire       nCE,
  input   wire       CP,
  input   wire       nUD,
  input   wire       nPL,
  output  wire       TC,
  output  wire       nRC,
  input   wire [3:0] D,
  output  wire [3:0] Q
  );

  reg [3:0] m_Q;

  always @(*) begin
    if (nPL == 1'b0) begin
      m_Q <= D;
    end
    else begin
      if (CP == 1'b1) begin
        if (nUD == 1'b0) begin
          m_Q <= m_Q + 1'b1;
        end
        else begin
          m_Q <= m_Q - 1'b1;
        end
      end
      else if (nCE == 1'b0)begin
        m_Q <= m_Q;
      end
    end
  end

  assign Q = m_Q;
  assign TC = 1'b0;
  assign nRC = 1'b0;

endmodule // LOGIC_74HC191
