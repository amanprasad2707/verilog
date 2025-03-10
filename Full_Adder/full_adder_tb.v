// Both testbenches correctly verify the functionality of the full adder.
// The first testbench places $monitor inside the same initial block as input assignments,
// ensuring real-time tracking of changes.
// The second testbench separates $monitor into a different initial block, 
// which is also valid since $monitor remains active throughout the simulation.
// Additionally, the second testbench includes an explicit initial block to call $finish after 80 time units.
// Both methods work correctly, and the choice depends on readability and modularity.


module full_adder_tb;
  reg a, b, cin;
  wire sum, cout;
  
  full_adder uut (sum, cout, a, b, cin);
  
  initial begin
    $monitor("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
    $finish;
  end
endmodule


module full_adder_tb;
  reg a, b, cin;
  wire sum, cout;
  
  full_adder uut (sum, cout, a, b, cin);
  
  initial begin
    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
  end

  initial begin
    $monitor("a=%b b=%b cin=%b | sum=%b cout=%b", a, b, cin, sum, cout);
  end
  
  initial begin
    #80 $finish;  // Fix the delay to match simulation time
  end

endmodule


// sample output
/* 
a=0 b=0 cin=0 | sum=0 cout=0
a=0 b=0 cin=1 | sum=1 cout=0
a=0 b=1 cin=0 | sum=1 cout=0
a=0 b=1 cin=1 | sum=0 cout=1
a=1 b=0 cin=0 | sum=1 cout=0
a=1 b=0 cin=1 | sum=0 cout=1
a=1 b=1 cin=0 | sum=0 cout=1
a=1 b=1 cin=1 | sum=1 cout=1
full_adder_tb.v:26: $finish called at 80 (1s)
*/
