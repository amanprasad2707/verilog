module mux_4x1_tb;
  reg i0, i1, i2, i3, s0, s1;
  wire y;

  // Instantiate the MUX
  mux_4x1 uut (y, i0, i1, i2, i3, s0, s1);

  initial begin
    $monitor("s1=%b s0=%b | i0=%b i1=%b i2=%b i3=%b | y=%b", s1, s0, i0, i1, i2, i3, y);
    
    // Test all input combinations
    i0 = 1; i1 = 0; i2 = 1; i3 = 0; 

    s1 = 0; s0 = 0; #10; // Select i0
    s1 = 0; s0 = 1; #10; // Select i1
    s1 = 1; s0 = 0; #10; // Select i2
    s1 = 1; s0 = 1; #10; // Select i3

    $finish;
  end
endmodule

// sample output
/* 
s1=0 s0=0 | i0=1 i1=0 i2=1 i3=0 | y=1
s1=0 s0=1 | i0=1 i1=0 i2=1 i3=0 | y=0
s1=1 s0=0 | i0=1 i1=0 i2=1 i3=0 | y=1
s1=1 s0=1 | i0=1 i1=0 i2=1 i3=0 | y=0
.\mux_4x1_tb.v:19: $finish called at 40 (1s)
*/
