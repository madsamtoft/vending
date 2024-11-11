module problem1(
  input         clock,
  input         reset,
  input  [27:0] io_sample,
  input         io_clr,
  output [23:0] io_average,
  output        io_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [27:0] sum; // @[problem1.scala 15:20]
  reg [3:0] cnt; // @[problem1.scala 16:20]
  wire [27:0] _sum_T_1 = io_sample + sum; // @[problem1.scala 19:45]
  wire [3:0] _cnt_T_1 = cnt + 4'h1; // @[problem1.scala 23:29]
  assign io_average = sum[27:4]; // @[problem1.scala 31:21]
  assign io_valid = cnt == 4'h0; // @[problem1.scala 28:12]
  always @(posedge clock) begin
    if (reset) begin // @[problem1.scala 15:20]
      sum <= 28'h0; // @[problem1.scala 15:20]
    end else if (io_valid) begin // @[problem1.scala 19:13]
      sum <= io_sample;
    end else begin
      sum <= _sum_T_1;
    end
    if (reset) begin // @[problem1.scala 16:20]
      cnt <= 4'h0; // @[problem1.scala 16:20]
    end else if (~io_clr) begin // @[problem1.scala 22:18]
      cnt <= _cnt_T_1; // @[problem1.scala 23:22]
    end else if (io_clr) begin // @[problem1.scala 22:18]
      cnt <= 4'h0; // @[problem1.scala 24:21]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  sum = _RAND_0[27:0];
  _RAND_1 = {1{`RANDOM}};
  cnt = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
