/*
 74HC221
*/

module LOGIC_74HC221(
  input  wire nA,
  input  wire B,
  input  wire nR,
  output wire Q,
  output wire nQ,
  input  wire CxRx,
  input  wire nC
);

  reg m_Q;

  always @(negedge nA or posedge B or negedge nR) begin
    if (nR == 1'b0) begin
      m_Q <= 1'b0;
    end
    else begin
      if (nA == 1'b0) begin
        if (B == 1'b1 & nR == 1'b1) begin
          m_Q <= 1'b1;
        end
        else begin
          m_Q <= 1'b0;
        end
      end
      else if (B == 1'b1) begin
        if (nA == 1'b0 & nR == 1'b1) begin
          m_Q <= 1'b1;
        end
        else begin
          m_Q <= 1'b0;
        end
      end
      else if (nR == 1'b0) begin
        if (nA == 1'b0 & B == 1'b1) begin
          m_Q <= 1'b1;
        end
        else begin
          m_Q <= 1'b0;
        end
      end
      else begin
        m_Q <= 1'b0;
      end
    end
  end

  assign Q = m_Q;
  assign nQ = ~m_Q;

endmodule // LOGIC_74HC221
