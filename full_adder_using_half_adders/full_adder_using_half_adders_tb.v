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
full_adder_using_half_adders_tb.v:17: $finish called at 80 (1s)
*/