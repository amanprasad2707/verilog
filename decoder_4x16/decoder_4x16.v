module decoder_4x16(y, i, en);
  input [3:0] i;  // 4-bit input
  input en;   // enable signal
  output [15:0] y;  // 16-bit output
  wire [3:0] i_n;  // array for complements

  // Generate complement values using NOT gates
  not (i_n[3], i[3]);
  not (i_n[2], i[2]);
  not (i_n[1], i[1]);
  not (i_n[0], i[0]);

  // AND gates for each output, using array indexing
  and (y[0],  en, i_n[3], i_n[2], i_n[1], i_n[0]); // 0000
  and (y[1],  en, i_n[3], i_n[2], i_n[1], i[0]);   // 0001
  and (y[2],  en, i_n[3], i_n[2], i[1], i_n[0]);   // 0010
  and (y[3],  en, i_n[3], i_n[2], i[1], i[0]);     // 0011
  and (y[4],  en, i_n[3], i[2], i_n[1], i_n[0]);   // 0100
  and (y[5],  en, i_n[3], i[2], i_n[1], i[0]);     // 0101
  and (y[6],  en, i_n[3], i[2], i[1], i_n[0]);     // 0110
  and (y[7],  en, i_n[3], i[2], i[1], i[0]);       // 0111
  and (y[8],  en, i[3], i_n[2], i_n[1], i_n[0]);   // 1000
  and (y[9],  en, i[3], i_n[2], i_n[1], i[0]);     // 1001
  and (y[10], en, i[3], i_n[2], i[1], i_n[0]);     // 1010
  and (y[11], en, i[3], i_n[2], i[1], i[0]);       // 1011
  and (y[12], en, i[3], i[2], i_n[1], i_n[0]);     // 1100
  and (y[13], en, i[3], i[2], i_n[1], i[0]);       // 1101
  and (y[14], en, i[3], i[2], i[1], i_n[0]);       // 1110
  and (y[15], en, i[3], i[2], i[1], i[0]);         // 1111

endmodule

