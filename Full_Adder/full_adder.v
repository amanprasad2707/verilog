// Both implementations of the full adder are correct.
// The first version uses direct assign statements for concise implementation.
// The second version explicitly defines intermediate wires for better readability and debugging.
// Both produce the same sum and carry outputs.


module full_adder (sum, cout, a, b, cin);
  input a, b, cin;
  output sum, cout;
  
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (b & cin) | (a & cin);
endmodule


module full_adder (sum, cout, a, b, cin);
  input a, b, cin;
  output sum, cout;
  wire w1, w2, w3;
  xor(w1, a, b);
  xor(sum, w1, cin);
  and(w2, a, b);
  and(w3, w1, cin);
  or(cout, w2, w3);
endmodule

// iverilog -o full_adder_tb full_adder.v full_adder_tb.v
// vvp full_adder_tb

