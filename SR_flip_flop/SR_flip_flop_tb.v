/* module SR_flip_flop_tb;
  reg S, R, clk;
  wire Q, Qbar;
  SR_flip_flop uut(Q, Qbar, S, R, clk);
  initial begin
    $monitor("Time=%0t | S=%b R=%b CLK=%b | Q=%b Qbar=%b", $time, S, R, clk, Q, Qbar);

    // Apply test cases
    S = 0; R = 0; clk = 0; #10;  // Hold State
    S = 0; R = 1; clk = 0; #10;  // Reset State (Q = 0, Qbar = 1)
    S = 1; R = 0; clk = 0; #10;  // Set State (Q = 1, Qbar = 0)
    S = 1; R = 1; clk = 0; #10;  // Invalid State (Both S & R are 1)

    S = 0; R = 0; clk = 1; #10;  // Hold State
    S = 0; R = 1; clk = 1; #10;  // Reset State (Q = 0, Qbar = 1)
    S = 1; R = 0; clk = 1; #10;  // Set State (Q = 1, Qbar = 0)
    S = 1; R = 1; clk = 1; #10;  // Invalid State (Both S & R are 1)
    $finish;
  end
endmodule */

`timescale 1ns/1ps

module SR_flip_flop_tb;
  reg S, R, clk;
  wire Q, Qbar;

  // Instantiate the SR Flip-Flop
  SR_flip_flop uut(Q, Qbar, S, R, clk);

  // Clock generation (toggle every 5 time units)
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    // Monitor the output
    $monitor("Time=%0t | S=%b R=%b CLK=%b | Q=%b Qbar=%b", 
              $time, S, R, clk, Q, Qbar);

    // Apply test cases
    S = 0; R = 0; #10;  // Hold State
    S = 0; R = 1; #10;  // Reset State (Q = 0, Qbar = 1)
    S = 1; R = 0; #10;  // Set State (Q = 1, Qbar = 0)
    S = 1; R = 1; #10;  // Invalid State (Both S & R are 1)

    $finish;
  end
endmodule

