module half_adder(sum, carry, a, b);
  output sum, carry;
  input a, b;
  xor(sum, a, b);
  and(carry, a, b);
endmodule


module full_adder(sum, cout, a, b, cin);
  input a, b, cin;
  output sum, cout;
  wire sum1, carry1, carry2;

  // first half adder
  half_adder HA1(sum1,carry1, a, b);
  // second half adder
  half_adder HA2(sum, carry2, sum1, cin);
  // final carry output
  or(cout, carry1, carry2);
endmodule

