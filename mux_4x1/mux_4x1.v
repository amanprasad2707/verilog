module mux_4x1 (y, i0, i1, i2, i3, s0, s1);
  input i0, i1, i2, i3;  // 4 Data inputs
  input s0, s1;          // 2 Select lines
  output y;              // Output

  wire s0_n, s1_n;  // Complement of select lines
  wire a, b, c, d;  // AND gate outputs

  // Generate complement of select lines
  not (s0_n, s0);
  not (s1_n, s1);

  // AND gates for each input line
  and (a, i0, s1_n, s0_n);
  and (b, i1, s1_n, s0);
  and (c, i2, s1, s0_n);
  and (d, i3, s1, s0);

  // OR gate to produce final output
  or (y, a, b, c, d);
endmodule
