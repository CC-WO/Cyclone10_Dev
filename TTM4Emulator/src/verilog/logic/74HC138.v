/*
 74HC138
*/

module LOGIC_74HC138(
  input  wire [3:0] A,
  input  wire [3:0] E,
  output wire [7:0] nY
  );

  function [7:0] MULTIPLXER(
    input wire [3:0] A,
    input wire [3:0] E
  );
  begin

    if ((~E[0] & ~E[1] & E[2]) == 1'b1) begin
      case(A)
        3'b000: MULTIPLXER = 8'b0000_0001;
        3'b001: MULTIPLXER = 8'b0000_0010;
        3'b010: MULTIPLXER = 8'b0000_0100;
        3'b011: MULTIPLXER = 8'b0000_1000;
        3'b100: MULTIPLXER = 8'b0001_0000;
        3'b101: MULTIPLXER = 8'b0010_0000;
        3'b110: MULTIPLXER = 8'b0100_0000;
        3'b111: MULTIPLXER = 8'b1000_0000;
        default: MULTIPLXER = 8'b0000_0000;
      endcase
    end
    else begin
      MULTIPLXER = 8'b0000_0000;
    end

  end
  endfunction

  assign nY = ~MULTIPLXER(A, E);

endmodule // LOGIC_74HC138
