module JK_FF_tb;
  reg J, K, clk;
  wire Q, Qbar;

  // Instantiate the JK Flip-Flop
  JK_FF uut (Q, Qbar, J, K, clk);

  // Generate Clock Signal (5-time unit period)
  always #5 clk = ~clk;  

  initial begin
    // Monitor output
    $monitor("Time=%0t | J=%b K=%b CLK=%b | Q=%b Qbar=%b", 
              $time, J, K, clk, Q, Qbar);

    // Initialize signals
    clk = 1; 
    J = 0; K = 0; #10;  // Hold State
    J = 0; K = 1; #10;  // Reset State (Q = 0, Qbar = 1)
    J = 1; K = 0; #10;  // Set State (Q = 1, Qbar = 0)
    J = 1; K = 1; #10;  // Toggle State (Q ⇄ Qbar)
    
    $finish;
  end
endmodule
