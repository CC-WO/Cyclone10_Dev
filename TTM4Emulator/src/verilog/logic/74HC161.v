/*
 74HC161
*/

module LOGIC_74HC161(
  input  wire       CK,
  input  wire       nCLR,
  input  wire       nLOAD,
  input  wire       ENP,
  input  wire       INT,
  input  wire [3:0] DATAIN,
  output wire       CO,
  output wire [3:0] COUNTER
);

  reg [3:0] m_COUNTER;

  always @(posedge CK or negedge nCLR) begin
    if (nCLR == 1'b0) begin
      m_COUNTER <= 4'b0000;
    end
    else if (nLOAD == 1'b0) begin
      m_COUNTER <= DATAIN;
    end
    else if (ENP == 1'b1 & INT == 1'b1) begin
      m_COUNTER <= m_COUNTER + 1'b1;
    end
    else begin
      m_COUNTER <= m_COUNTER;
    end
  end

  assign COUNTER = m_COUNTER;
  assign CO = (m_COUNTER == 4'b1111) ? 1'b1 : 1'b0;

endmodule // LOGIC_74HC161
