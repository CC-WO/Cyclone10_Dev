/*
 74HC259
*/

module LOGIC_74HC259(
  input  wire [2:0] A,
  input  wire       D,
  input  wire       nLE,
  input  wire       nMR,
  output wire [7:0] Q
  );

  function [7:0] DECODER(
    input [2:0] A,
    input D,
    input nLE,
    input nMR
    );
  begin

    if (nMR == 0) begin
      if (nLE == 1) begin
        DECODER = 8'h00;
      end
      else begin
        case(A)
          4'b000:  DECODER = { 7'b000_0000, D,            };
          4'b001:  DECODER = { 6'b00_0000 , D,        1'b0};
          4'b010:  DECODER = { 5'b0_0000  , D,       2'b00};
          4'b011:  DECODER = { 4'b0000    , D,      3'b000};
          4'b100:  DECODER = { 3'b000     , D,     4'b0000};
          4'b101:  DECODER = { 2'b00      , D,    5'b00000};
          4'b110:  DECODER = { 1'b0       , D,   6'b000000};
          4'b111:  DECODER = {              D,  7'b0000000};
          default: DECODER = 8'hzz;
        endcase
      end
    end
    else begin
      if (nLE == 1) begin
        // no function
      end
      else begin
        case(A)
          4'b000:  DECODER = {DECODER[7:1], D               };
          4'b001:  DECODER = {DECODER[7:2], D, DECODER[0]   };
          4'b010:  DECODER = {DECODER[7:3], D, DECODER[1:0]};
          4'b011:  DECODER = {DECODER[7:4], D, DECODER[2:0]};
          4'b100:  DECODER = {DECODER[7:5], D, DECODER[3:0]};
          4'b101:  DECODER = {DECODER[7:6], D, DECODER[4:0]};
          4'b110:  DECODER = {DECODER[7],   D, DECODER[5:0]};
          4'b111:  DECODER = {              D, DECODER[6:0]};
          default: DECODER = 8'hzz;
        endcase
      end
    end
  end
  endfunction

  wire [7:0] m_DECODER = DECODER(A, D, nLE, nMR);
  assign Q = m_DECODER;

endmodule // LOGIC_74HC259
