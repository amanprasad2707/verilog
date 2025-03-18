module SR_flip_flop(Q, Qbar, S, R, clk);
  output reg Q, Qbar;
  input S, R, clk;

  always @(posedge clk) begin
    if (S == 0 && R == 1) begin
      Q <= 0; 
      Qbar <= 1;  // Reset State
    end 
    else if (S == 1 && R == 0) begin
      Q <= 1; 
      Qbar <= 0;  // Set State
    end 
    else if (S == 1 && R == 1) begin
      Q <= 1'bx; 
      Qbar <= 1'bx;  // Invalid State
    end
  end
endmodule
