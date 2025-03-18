
module JK_FF(Q, Qbar, J, K, clk);
  input J, K, clk;
  output reg Q, Qbar;  // Use 'reg' to hold state

  always @(posedge clk) begin
    case ({J, K})
      2'b00: Q <= Q;        // Hold state
      2'b01: Q <= 0;        // Reset
      2'b10: Q <= 1;        // Set
      2'b11: Q <= ~Q;       // Toggle
    endcase
    Qbar <= ~Q;  // Qbar is always complement of Q
  end
endmodule
