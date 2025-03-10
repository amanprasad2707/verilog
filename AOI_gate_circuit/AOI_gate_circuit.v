module aoi_gates (o, a1, a2, b1, b2);
  output o;
  input a1, a2, b1, b2;
  wire o1, o2, o3;
  and(o1, a1, a2);
  and(o2, b1, b2);
  or(o3, o1, o2);
  not(o, o3);
endmodule