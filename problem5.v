module problem5(
  input        clock,
  input        reset,
  output       io_load_ready,
  input        io_load_valid,
  input  [7:0] io_load_bits,
  output       io_ser
);
  assign io_load_ready = 1'h0; // @[problem5.scala 10:17]
  assign io_ser = io_load_bits[0]; // @[problem5.scala 12:27]
endmodule
