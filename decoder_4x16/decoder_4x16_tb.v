module decoder_4x16_tb;
  reg [3:0] i;
  reg en;
  wire [15:0] y;
  decoder_4x16 uut(y, i, en);
  initial begin
    $monitor("Enable=%b | Input=%b | Output=%b", en, i, y);
    en = 1;
    i = 4'b0000; #10;
    i = 4'b0001; #10;
    i = 4'b0010; #10;
    i = 4'b0011; #10;
    i = 4'b0100; #10;
    i = 4'b0101; #10;
    i = 4'b0110; #10;
    i = 4'b0111; #10;
    i = 4'b1000; #10;
    i = 4'b1001; #10;
    i = 4'b1010; #10;
    i = 4'b1011; #10;
    i = 4'b1100; #10;
    i = 4'b1101; #10;
    i = 4'b1110; #10;
    i = 4'b1111; #10;

    // Disable the decoder and check output (should be 0)
    en = 0;
    i = 4'b1010; #10;
    $finish;
  end
endmodule


/*
module decoder_4x16_tb;
  reg [3:0] i;       // 4-bit input
  reg en;            // Enable signal
  wire [15:0] y;     // 16-bit output

  // Instantiate the decoder module
  decoder_4x16 uut(y, i, en);
  initial begin
    $monitor("Enable=%b | Input=%b | Output=%b", en, i, y);
    
    // Enable the decoder
    en = 1;

    // Apply all 16 possible input values using a loop
    for (integer k = 0; k < 16; k++) begin
      i = k;  // Assign loop index to input
      #10;    // Wait for 10 time units
    end

    // Test with enable set to 0 (all outputs should be 0)
    en = 0;
    i = 4'b1010; // Random input
    #10;

    $finish;
  end
endmodule
*/

// sample output
/* 
Enable=1 | Input=0000 | Output=0000000000000001
Enable=1 | Input=0001 | Output=0000000000000010
Enable=1 | Input=0010 | Output=0000000000000100
Enable=1 | Input=0011 | Output=0000000000001000
Enable=1 | Input=0100 | Output=0000000000010000
Enable=1 | Input=0101 | Output=0000000000100000
Enable=1 | Input=0110 | Output=0000000001000000
Enable=1 | Input=0111 | Output=0000000010000000
Enable=1 | Input=1000 | Output=0000000100000000
Enable=1 | Input=1001 | Output=0000001000000000
Enable=1 | Input=1010 | Output=0000010000000000
Enable=1 | Input=1011 | Output=0000100000000000
Enable=1 | Input=1100 | Output=0001000000000000
Enable=1 | Input=1101 | Output=0010000000000000
Enable=1 | Input=1110 | Output=0100000000000000
Enable=1 | Input=1111 | Output=1000000000000000
Enable=0 | Input=1010 | Output=0000000000000000
decoder_4x16_tb.v:29: $finish called at 170 (1s)
*/



