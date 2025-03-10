module JK_FF(Q, Qbar, J, K, clk);
  input J, K, clk;
  output Q, Qbar;
  wire w1, w2;

  nand(w1, J, clk, Qbar);  // J input control
  nand(w2, K, clk, Q);     // K input control
  nand(Q, w1, Qbar);       // Final Q output
  nand(Qbar, w2, Q);       // Final Qbar output

endmodule
