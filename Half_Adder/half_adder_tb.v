module half_adder_tb;
  reg a,b;
  wire sum, carry;
  half_adder uut(sum, carry, a, b);
  initial begin
    $monitor("a=%b  b=%b  | sum=%b  carry=%b", a,b,sum, carry);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end
endmodule

// sample output
/*
a=0  b=0  | sum=0  carry=0
a=0  b=1  | sum=1  carry=0
a=1  b=0  | sum=1  carry=0
a=1  b=1  | sum=0  carry=1
half_adder_tb.v:11: $finish called at 40 (1s) 
*/