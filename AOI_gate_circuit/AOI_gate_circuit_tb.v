module aoi_gates_tb;
  reg a1, a2, b1, b2;
  wire o;
  aoi_gates uut(o, a1, a2, b1, b2);
  initial begin
    a1 = 0; a2 = 0; b1 = 0; b2 = 0;
    $monitor("a1=%b a2=%b b1=%b b2=%b | o=%b", a1, a2, b1, b2, o);
    // Apply all input combinations
    a1 = 0; a2 = 0; b1 = 0; b2 = 0; #10;
    a1 = 0; a2 = 0; b1 = 0; b2 = 1; #10;
    a1 = 0; a2 = 0; b1 = 1; b2 = 0; #10;
    a1 = 0; a2 = 0; b1 = 1; b2 = 1; #10;
    a1 = 0; a2 = 1; b1 = 0; b2 = 0; #10;
    a1 = 0; a2 = 1; b1 = 0; b2 = 1; #10;
    a1 = 0; a2 = 1; b1 = 1; b2 = 0; #10;
    a1 = 0; a2 = 1; b1 = 1; b2 = 1; #10;
    a1 = 1; a2 = 0; b1 = 0; b2 = 0; #10;
    a1 = 1; a2 = 0; b1 = 0; b2 = 1; #10;
    a1 = 1; a2 = 0; b1 = 1; b2 = 0; #10;
    a1 = 1; a2 = 0; b1 = 1; b2 = 1; #10;
    a1 = 1; a2 = 1; b1 = 0; b2 = 0; #10;
    a1 = 1; a2 = 1; b1 = 0; b2 = 1; #10;
    a1 = 1; a2 = 1; b1 = 1; b2 = 0; #10;
    a1 = 1; a2 = 1; b1 = 1; b2 = 1; #10;
    $finish;
  end
endmodule
