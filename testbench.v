`timescale 1ns/100ps

module FourBitAluTB();
  reg [3:0] A;
  reg [3:0] B;
  reg [1:0] OP;
  wire [4:0] C;
  
  alu_machine FBA(
    .A(A),
    .B(B),
    .OP(OP),
    .Out(C[3:0]),
    .Extra(C[4])
    );
  
  initial begin 
    $dumpfile("test.vcd"); 
    $dumpvars(1,FourBitAluTB);  
    #100  A=4'd3; B=4'd4; OP = 2'b00;
    #100  A=4'd0; B=4'd5; OP = 2'b01;	
    #100  A=4'd9; B=4'd2; OP = 2'b10;
    #100  A=4'd10; B=4'd10; OP = 2'b11;
    #100  $finish;
  end
endmodule