`timescale 1ns/100ps

module alu_machine(
  input [3:0] A,
  input [3:0] B,
  input[1:0] OP,
  output reg [3:0] Out,
  output reg  Extra
);
  always @ * begin
    case(OP)
      'b00 : {Extra, Out} = A + B;
    endcase
    case(OP)
      'b01 : {Extra, Out} = A * B;
    endcase
    case(OP)
      'b10 : {Extra, Out} = A / B;
    endcase
    case(OP)
      'b11 : {Extra, Out} = A - B;
    endcase
  end
endmodule