module FSM(
  input   clock,
  input   reset,
  input   io_coin2,
  input   io_coin5,
  input   io_buy,
  input   io_nextItem,
  input   io_enoughMoney,
  output  io_alarm,
  output  io_releaseCan,
  output  io_idleScreen,
  output  io_add2,
  output  io_add5,
  output  io_purchase,
  output  io_cycle
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] stateReg; // @[FSM.scala 33:25]
  reg  REG; // @[FSM.scala 23:21]
  wire  _T_10 = io_coin2 & ~REG; // @[FSM.scala 23:11]
  reg  REG_1; // @[FSM.scala 23:21]
  wire  _T_12 = io_coin5 & ~REG_1; // @[FSM.scala 23:11]
  reg  REG_2; // @[FSM.scala 23:21]
  wire  _T_14 = io_buy & ~REG_2; // @[FSM.scala 23:11]
  reg  REG_3; // @[FSM.scala 23:21]
  wire  _T_16 = io_nextItem & ~REG_3; // @[FSM.scala 23:11]
  wire [2:0] _GEN_1 = _T_16 ? 3'h5 : stateReg; // @[FSM.scala 49:45 50:18 33:25]
  wire [2:0] _GEN_2 = _T_14 ? 3'h4 : _GEN_1; // @[FSM.scala 47:40 48:18]
  wire [2:0] _GEN_3 = _T_12 ? 3'h3 : _GEN_2; // @[FSM.scala 45:42 46:18]
  wire [2:0] _GEN_5 = ~io_enoughMoney ? 3'h6 : 3'h7; // @[FSM.scala 60:40 61:18 63:18]
  wire [2:0] _GEN_6 = ~io_buy ? 3'h0 : stateReg; // @[FSM.scala 70:21 71:18 33:25]
  wire [2:0] _GEN_8 = 3'h6 == stateReg ? _GEN_6 : stateReg; // @[FSM.scala 36:23 33:25]
  wire [2:0] _GEN_9 = 3'h7 == stateReg ? _GEN_6 : _GEN_8; // @[FSM.scala 36:23]
  wire [2:0] _GEN_10 = 3'h5 == stateReg ? 3'h0 : _GEN_9; // @[FSM.scala 36:23 67:16]
  wire [2:0] _GEN_11 = 3'h4 == stateReg ? _GEN_5 : _GEN_10; // @[FSM.scala 36:23]
  wire [2:0] _GEN_12 = 3'h3 == stateReg ? 3'h0 : _GEN_11; // @[FSM.scala 36:23 57:16]
  assign io_alarm = stateReg == 3'h6; // @[FSM.scala 86:30]
  assign io_releaseCan = stateReg == 3'h7; // @[FSM.scala 87:30]
  assign io_idleScreen = stateReg == 3'h1; // @[FSM.scala 81:30]
  assign io_add2 = stateReg == 3'h2; // @[FSM.scala 82:30]
  assign io_add5 = stateReg == 3'h3; // @[FSM.scala 83:30]
  assign io_purchase = stateReg == 3'h4 & io_enoughMoney; // @[FSM.scala 85:38]
  assign io_cycle = stateReg == 3'h5; // @[FSM.scala 84:30]
  always @(posedge clock) begin
    if (reset) begin // @[FSM.scala 33:25]
      stateReg <= 3'h1; // @[FSM.scala 33:25]
    end else if (3'h1 == stateReg) begin // @[FSM.scala 36:23]
      if (io_coin2 | io_coin5 | io_buy | io_nextItem) begin // @[FSM.scala 38:56]
        stateReg <= 3'h0; // @[FSM.scala 39:18]
      end
    end else if (3'h0 == stateReg) begin // @[FSM.scala 36:23]
      if (_T_10) begin // @[FSM.scala 43:35]
        stateReg <= 3'h2; // @[FSM.scala 44:18]
      end else begin
        stateReg <= _GEN_3;
      end
    end else if (3'h2 == stateReg) begin // @[FSM.scala 36:23]
      stateReg <= 3'h0; // @[FSM.scala 54:16]
    end else begin
      stateReg <= _GEN_12;
    end
    REG <= io_coin2; // @[FSM.scala 23:21]
    REG_1 <= io_coin5; // @[FSM.scala 23:21]
    REG_2 <= io_buy; // @[FSM.scala 23:21]
    REG_3 <= io_nextItem; // @[FSM.scala 23:21]
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
  stateReg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  REG = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  REG_2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  REG_3 = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module DataPath(
  input        clock,
  input        reset,
  input        io_add2,
  input        io_add5,
  input        io_cycle,
  input        io_purchase,
  input        io_setPrice,
  input  [4:0] io_price,
  output [4:0] io_activePrice,
  output [7:0] io_sum,
  output       io_enoughMoney
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] priceMem [0:3]; // @[DataPath.scala 22:29]
  wire  priceMem_price_en; // @[DataPath.scala 22:29]
  wire [1:0] priceMem_price_addr; // @[DataPath.scala 22:29]
  wire [4:0] priceMem_price_data; // @[DataPath.scala 22:29]
  wire [4:0] priceMem_MPORT_data; // @[DataPath.scala 22:29]
  wire [1:0] priceMem_MPORT_addr; // @[DataPath.scala 22:29]
  wire  priceMem_MPORT_mask; // @[DataPath.scala 22:29]
  wire  priceMem_MPORT_en; // @[DataPath.scala 22:29]
  reg  priceMem_price_en_pipe_0;
  reg [1:0] priceMem_price_addr_pipe_0;
  reg [1:0] priceAddr; // @[DataPath.scala 17:26]
  wire [1:0] _priceAddr_T_1 = priceAddr + 2'h1; // @[DataPath.scala 19:28]
  reg  REG; // @[DataPath.scala 26:31]
  wire  _T_1 = ~REG; // @[DataPath.scala 26:23]
  reg [7:0] sum; // @[DataPath.scala 30:20]
  wire [7:0] _GEN_15 = {{3'd0}, priceMem_price_data}; // @[DataPath.scala 32:26]
  wire [7:0] _sum_T_1 = sum + 8'h2; // @[DataPath.scala 36:18]
  wire [7:0] _sum_T_3 = sum + 8'h5; // @[DataPath.scala 42:18]
  wire [7:0] _sum_T_5 = sum - _GEN_15; // @[DataPath.scala 47:16]
  assign priceMem_price_en = priceMem_price_en_pipe_0;
  assign priceMem_price_addr = priceMem_price_addr_pipe_0;
  assign priceMem_price_data = priceMem[priceMem_price_addr]; // @[DataPath.scala 22:29]
  assign priceMem_MPORT_data = io_price;
  assign priceMem_MPORT_addr = priceAddr;
  assign priceMem_MPORT_mask = 1'h1;
  assign priceMem_MPORT_en = io_setPrice & _T_1;
  assign io_activePrice = priceMem_price_data; // @[DataPath.scala 24:18]
  assign io_sum = sum; // @[DataPath.scala 31:10]
  assign io_enoughMoney = sum >= _GEN_15; // @[DataPath.scala 32:26]
  always @(posedge clock) begin
    if (priceMem_MPORT_en & priceMem_MPORT_mask) begin
      priceMem[priceMem_MPORT_addr] <= priceMem_MPORT_data; // @[DataPath.scala 22:29]
    end
    priceMem_price_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      priceMem_price_addr_pipe_0 <= priceAddr;
    end
    if (reset) begin // @[DataPath.scala 17:26]
      priceAddr <= 2'h0; // @[DataPath.scala 17:26]
    end else if (io_cycle) begin // @[DataPath.scala 18:30]
      priceAddr <= _priceAddr_T_1; // @[DataPath.scala 19:15]
    end
    REG <= io_setPrice; // @[DataPath.scala 26:31]
    if (reset) begin // @[DataPath.scala 30:20]
      sum <= 8'h0; // @[DataPath.scala 30:20]
    end else if (io_add2) begin // @[DataPath.scala 34:29]
      if (sum < 8'h62) begin // @[DataPath.scala 35:22]
        sum <= _sum_T_1; // @[DataPath.scala 36:11]
      end else begin
        sum <= 8'h63; // @[DataPath.scala 38:11]
      end
    end else if (io_add5) begin // @[DataPath.scala 40:35]
      if (sum < 8'h5f) begin // @[DataPath.scala 41:22]
        sum <= _sum_T_3; // @[DataPath.scala 42:11]
      end else begin
        sum <= 8'h63; // @[DataPath.scala 44:11]
      end
    end else if (io_purchase) begin // @[DataPath.scala 46:40]
      sum <= _sum_T_5; // @[DataPath.scala 47:9]
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
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    priceMem[initvar] = _RAND_0[4:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  priceMem_price_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  priceMem_price_addr_pipe_0 = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  priceAddr = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  sum = _RAND_5[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SevenSegNum(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h7f : 7'h0; // @[SevenSegNum.scala 14:17 31:24 10:27]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[SevenSegNum.scala 14:17 29:24]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[SevenSegNum.scala 14:17 28:24]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h58 : _GEN_2; // @[SevenSegNum.scala 14:17 27:24]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[SevenSegNum.scala 14:17 26:24]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h77 : _GEN_4; // @[SevenSegNum.scala 14:17 25:24]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[SevenSegNum.scala 14:17 24:24]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[SevenSegNum.scala 14:17 23:24]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[SevenSegNum.scala 14:17 22:24]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[SevenSegNum.scala 14:17 21:24]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[SevenSegNum.scala 14:17 20:24]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[SevenSegNum.scala 14:17 19:24]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[SevenSegNum.scala 14:17 18:24]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[SevenSegNum.scala 14:17 17:24]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[SevenSegNum.scala 14:17 16:24]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[SevenSegNum.scala 14:17 15:24]
endmodule
module SevenSegChar(
  input  [4:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 5'h1f == io_in ? 7'h7f : 7'h0; // @[SevenSegChar.scala 12:17 44:24 10:27]
  wire [6:0] _GEN_1 = 5'h1e == io_in ? 7'h7f : _GEN_0; // @[SevenSegChar.scala 12:17 43:24]
  wire [6:0] _GEN_2 = 5'h1d == io_in ? 7'h7f : _GEN_1; // @[SevenSegChar.scala 12:17 42:24]
  wire [6:0] _GEN_3 = 5'h1c == io_in ? 7'h7f : _GEN_2; // @[SevenSegChar.scala 12:17 41:24]
  wire [6:0] _GEN_4 = 5'h1b == io_in ? 7'h7f : _GEN_3; // @[SevenSegChar.scala 12:17 40:24]
  wire [6:0] _GEN_5 = 5'h1a == io_in ? 7'h0 : _GEN_4; // @[SevenSegChar.scala 12:17 39:24]
  wire [6:0] _GEN_6 = 5'h19 == io_in ? 7'h5b : _GEN_5; // @[SevenSegChar.scala 12:17 38:24]
  wire [6:0] _GEN_7 = 5'h18 == io_in ? 7'h6e : _GEN_6; // @[SevenSegChar.scala 12:17 37:24]
  wire [6:0] _GEN_8 = 5'h17 == io_in ? 7'h76 : _GEN_7; // @[SevenSegChar.scala 12:17 36:24]
  wire [6:0] _GEN_9 = 5'h16 == io_in ? 7'h2a : _GEN_8; // @[SevenSegChar.scala 12:17 35:24]
  wire [6:0] _GEN_10 = 5'h15 == io_in ? 7'h3e : _GEN_9; // @[SevenSegChar.scala 12:17 34:24]
  wire [6:0] _GEN_11 = 5'h14 == io_in ? 7'h3e : _GEN_10; // @[SevenSegChar.scala 12:17 33:24]
  wire [6:0] _GEN_12 = 5'h13 == io_in ? 7'h78 : _GEN_11; // @[SevenSegChar.scala 12:17 32:24]
  wire [6:0] _GEN_13 = 5'h12 == io_in ? 7'h6d : _GEN_12; // @[SevenSegChar.scala 12:17 31:24]
  wire [6:0] _GEN_14 = 5'h11 == io_in ? 7'h31 : _GEN_13; // @[SevenSegChar.scala 12:17 30:24]
  wire [6:0] _GEN_15 = 5'h10 == io_in ? 7'h6b : _GEN_14; // @[SevenSegChar.scala 12:17 29:24]
  wire [6:0] _GEN_16 = 5'hf == io_in ? 7'h73 : _GEN_15; // @[SevenSegChar.scala 12:17 28:24]
  wire [6:0] _GEN_17 = 5'he == io_in ? 7'h5c : _GEN_16; // @[SevenSegChar.scala 12:17 27:24]
  wire [6:0] _GEN_18 = 5'hd == io_in ? 7'h37 : _GEN_17; // @[SevenSegChar.scala 12:17 26:24]
  wire [6:0] _GEN_19 = 5'hc == io_in ? 7'h15 : _GEN_18; // @[SevenSegChar.scala 12:17 25:24]
  wire [6:0] _GEN_20 = 5'hb == io_in ? 7'h38 : _GEN_19; // @[SevenSegChar.scala 12:17 24:24]
  wire [6:0] _GEN_21 = 5'ha == io_in ? 7'h75 : _GEN_20; // @[SevenSegChar.scala 12:17 23:24]
  wire [6:0] _GEN_22 = 5'h9 == io_in ? 7'h1e : _GEN_21; // @[SevenSegChar.scala 12:17 22:23]
  wire [6:0] _GEN_23 = 5'h8 == io_in ? 7'h30 : _GEN_22; // @[SevenSegChar.scala 12:17 21:23]
  wire [6:0] _GEN_24 = 5'h7 == io_in ? 7'h76 : _GEN_23; // @[SevenSegChar.scala 12:17 20:23]
  wire [6:0] _GEN_25 = 5'h6 == io_in ? 7'h3d : _GEN_24; // @[SevenSegChar.scala 12:17 19:23]
  wire [6:0] _GEN_26 = 5'h5 == io_in ? 7'h71 : _GEN_25; // @[SevenSegChar.scala 12:17 18:23]
  wire [6:0] _GEN_27 = 5'h4 == io_in ? 7'h79 : _GEN_26; // @[SevenSegChar.scala 12:17 17:23]
  wire [6:0] _GEN_28 = 5'h3 == io_in ? 7'h5e : _GEN_27; // @[SevenSegChar.scala 12:17 16:23]
  wire [6:0] _GEN_29 = 5'h2 == io_in ? 7'h39 : _GEN_28; // @[SevenSegChar.scala 12:17 15:23]
  wire [6:0] _GEN_30 = 5'h1 == io_in ? 7'h7c : _GEN_29; // @[SevenSegChar.scala 12:17 14:23]
  assign io_out = 5'h0 == io_in ? 7'h77 : _GEN_30; // @[SevenSegChar.scala 12:17 13:23]
endmodule
module BcdTable(
  input  [7:0] io_address,
  output [7:0] io_data
);
  wire [7:0] _GEN_1 = 7'h1 == io_address[6:0] ? 8'h1 : 8'h0; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_2 = 7'h2 == io_address[6:0] ? 8'h2 : _GEN_1; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_3 = 7'h3 == io_address[6:0] ? 8'h3 : _GEN_2; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_4 = 7'h4 == io_address[6:0] ? 8'h4 : _GEN_3; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_5 = 7'h5 == io_address[6:0] ? 8'h5 : _GEN_4; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_6 = 7'h6 == io_address[6:0] ? 8'h6 : _GEN_5; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_7 = 7'h7 == io_address[6:0] ? 8'h7 : _GEN_6; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_8 = 7'h8 == io_address[6:0] ? 8'h8 : _GEN_7; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_9 = 7'h9 == io_address[6:0] ? 8'h9 : _GEN_8; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_10 = 7'ha == io_address[6:0] ? 8'h10 : _GEN_9; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_11 = 7'hb == io_address[6:0] ? 8'h11 : _GEN_10; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_12 = 7'hc == io_address[6:0] ? 8'h12 : _GEN_11; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_13 = 7'hd == io_address[6:0] ? 8'h13 : _GEN_12; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_14 = 7'he == io_address[6:0] ? 8'h14 : _GEN_13; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_15 = 7'hf == io_address[6:0] ? 8'h15 : _GEN_14; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_16 = 7'h10 == io_address[6:0] ? 8'h16 : _GEN_15; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_17 = 7'h11 == io_address[6:0] ? 8'h17 : _GEN_16; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_18 = 7'h12 == io_address[6:0] ? 8'h18 : _GEN_17; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_19 = 7'h13 == io_address[6:0] ? 8'h19 : _GEN_18; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_20 = 7'h14 == io_address[6:0] ? 8'h20 : _GEN_19; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_21 = 7'h15 == io_address[6:0] ? 8'h21 : _GEN_20; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_22 = 7'h16 == io_address[6:0] ? 8'h22 : _GEN_21; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_23 = 7'h17 == io_address[6:0] ? 8'h23 : _GEN_22; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_24 = 7'h18 == io_address[6:0] ? 8'h24 : _GEN_23; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_25 = 7'h19 == io_address[6:0] ? 8'h25 : _GEN_24; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_26 = 7'h1a == io_address[6:0] ? 8'h26 : _GEN_25; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_27 = 7'h1b == io_address[6:0] ? 8'h27 : _GEN_26; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_28 = 7'h1c == io_address[6:0] ? 8'h28 : _GEN_27; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_29 = 7'h1d == io_address[6:0] ? 8'h29 : _GEN_28; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_30 = 7'h1e == io_address[6:0] ? 8'h30 : _GEN_29; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_31 = 7'h1f == io_address[6:0] ? 8'h31 : _GEN_30; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_32 = 7'h20 == io_address[6:0] ? 8'h32 : _GEN_31; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_33 = 7'h21 == io_address[6:0] ? 8'h33 : _GEN_32; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_34 = 7'h22 == io_address[6:0] ? 8'h34 : _GEN_33; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_35 = 7'h23 == io_address[6:0] ? 8'h35 : _GEN_34; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_36 = 7'h24 == io_address[6:0] ? 8'h36 : _GEN_35; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_37 = 7'h25 == io_address[6:0] ? 8'h37 : _GEN_36; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_38 = 7'h26 == io_address[6:0] ? 8'h38 : _GEN_37; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_39 = 7'h27 == io_address[6:0] ? 8'h39 : _GEN_38; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_40 = 7'h28 == io_address[6:0] ? 8'h40 : _GEN_39; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_41 = 7'h29 == io_address[6:0] ? 8'h41 : _GEN_40; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_42 = 7'h2a == io_address[6:0] ? 8'h42 : _GEN_41; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_43 = 7'h2b == io_address[6:0] ? 8'h43 : _GEN_42; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_44 = 7'h2c == io_address[6:0] ? 8'h44 : _GEN_43; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_45 = 7'h2d == io_address[6:0] ? 8'h45 : _GEN_44; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_46 = 7'h2e == io_address[6:0] ? 8'h46 : _GEN_45; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_47 = 7'h2f == io_address[6:0] ? 8'h47 : _GEN_46; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_48 = 7'h30 == io_address[6:0] ? 8'h48 : _GEN_47; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_49 = 7'h31 == io_address[6:0] ? 8'h49 : _GEN_48; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_50 = 7'h32 == io_address[6:0] ? 8'h50 : _GEN_49; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_51 = 7'h33 == io_address[6:0] ? 8'h51 : _GEN_50; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_52 = 7'h34 == io_address[6:0] ? 8'h52 : _GEN_51; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_53 = 7'h35 == io_address[6:0] ? 8'h53 : _GEN_52; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_54 = 7'h36 == io_address[6:0] ? 8'h54 : _GEN_53; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_55 = 7'h37 == io_address[6:0] ? 8'h55 : _GEN_54; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_56 = 7'h38 == io_address[6:0] ? 8'h56 : _GEN_55; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_57 = 7'h39 == io_address[6:0] ? 8'h57 : _GEN_56; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_58 = 7'h3a == io_address[6:0] ? 8'h58 : _GEN_57; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_59 = 7'h3b == io_address[6:0] ? 8'h59 : _GEN_58; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_60 = 7'h3c == io_address[6:0] ? 8'h60 : _GEN_59; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_61 = 7'h3d == io_address[6:0] ? 8'h61 : _GEN_60; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_62 = 7'h3e == io_address[6:0] ? 8'h62 : _GEN_61; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_63 = 7'h3f == io_address[6:0] ? 8'h63 : _GEN_62; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_64 = 7'h40 == io_address[6:0] ? 8'h64 : _GEN_63; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_65 = 7'h41 == io_address[6:0] ? 8'h65 : _GEN_64; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_66 = 7'h42 == io_address[6:0] ? 8'h66 : _GEN_65; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_67 = 7'h43 == io_address[6:0] ? 8'h67 : _GEN_66; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_68 = 7'h44 == io_address[6:0] ? 8'h68 : _GEN_67; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_69 = 7'h45 == io_address[6:0] ? 8'h69 : _GEN_68; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_70 = 7'h46 == io_address[6:0] ? 8'h70 : _GEN_69; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_71 = 7'h47 == io_address[6:0] ? 8'h71 : _GEN_70; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_72 = 7'h48 == io_address[6:0] ? 8'h72 : _GEN_71; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_73 = 7'h49 == io_address[6:0] ? 8'h73 : _GEN_72; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_74 = 7'h4a == io_address[6:0] ? 8'h74 : _GEN_73; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_75 = 7'h4b == io_address[6:0] ? 8'h75 : _GEN_74; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_76 = 7'h4c == io_address[6:0] ? 8'h76 : _GEN_75; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_77 = 7'h4d == io_address[6:0] ? 8'h77 : _GEN_76; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_78 = 7'h4e == io_address[6:0] ? 8'h78 : _GEN_77; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_79 = 7'h4f == io_address[6:0] ? 8'h79 : _GEN_78; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_80 = 7'h50 == io_address[6:0] ? 8'h80 : _GEN_79; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_81 = 7'h51 == io_address[6:0] ? 8'h81 : _GEN_80; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_82 = 7'h52 == io_address[6:0] ? 8'h82 : _GEN_81; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_83 = 7'h53 == io_address[6:0] ? 8'h83 : _GEN_82; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_84 = 7'h54 == io_address[6:0] ? 8'h84 : _GEN_83; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_85 = 7'h55 == io_address[6:0] ? 8'h85 : _GEN_84; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_86 = 7'h56 == io_address[6:0] ? 8'h86 : _GEN_85; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_87 = 7'h57 == io_address[6:0] ? 8'h87 : _GEN_86; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_88 = 7'h58 == io_address[6:0] ? 8'h88 : _GEN_87; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_89 = 7'h59 == io_address[6:0] ? 8'h89 : _GEN_88; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_90 = 7'h5a == io_address[6:0] ? 8'h90 : _GEN_89; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_91 = 7'h5b == io_address[6:0] ? 8'h91 : _GEN_90; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_92 = 7'h5c == io_address[6:0] ? 8'h92 : _GEN_91; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_93 = 7'h5d == io_address[6:0] ? 8'h93 : _GEN_92; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_94 = 7'h5e == io_address[6:0] ? 8'h94 : _GEN_93; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_95 = 7'h5f == io_address[6:0] ? 8'h95 : _GEN_94; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_96 = 7'h60 == io_address[6:0] ? 8'h96 : _GEN_95; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_97 = 7'h61 == io_address[6:0] ? 8'h97 : _GEN_96; // @[BcdTable.scala 15:{11,11}]
  wire [7:0] _GEN_98 = 7'h62 == io_address[6:0] ? 8'h98 : _GEN_97; // @[BcdTable.scala 15:{11,11}]
  assign io_data = 7'h63 == io_address[6:0] ? 8'h99 : _GEN_98; // @[BcdTable.scala 15:{11,11}]
endmodule
module SevenSegController(
  input        clock,
  input        reset,
  input        io_idleScreen,
  input        io_alarm,
  input  [7:0] io_price,
  input  [7:0] io_sum,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] sevSegNum_io_in; // @[SevenSegController.scala 15:25]
  wire [6:0] sevSegNum_io_out; // @[SevenSegController.scala 15:25]
  wire [4:0] sevSegChar_io_in; // @[SevenSegController.scala 16:26]
  wire [6:0] sevSegChar_io_out; // @[SevenSegController.scala 16:26]
  wire [7:0] bcd_io_address; // @[SevenSegController.scala 37:19]
  wire [7:0] bcd_io_data; // @[SevenSegController.scala 37:19]
  reg [1:0] segSelect; // @[SevenSegController.scala 18:26]
  reg [16:0] firstCounter; // @[SevenSegController.scala 19:29]
  wire [16:0] _firstCounter_T_1 = firstCounter + 17'h1; // @[SevenSegController.scala 21:32]
  wire  firstCount = firstCounter == 17'h186a0; // @[SevenSegController.scala 22:34]
  wire [1:0] _segSelect_T_1 = segSelect + 2'h1; // @[SevenSegController.scala 25:28]
  wire [3:0] _GEN_2 = 2'h3 == segSelect ? 4'h7 : 4'hf; // @[SevenSegController.scala 29:21 33:22 28:9]
  wire [3:0] _GEN_3 = 2'h2 == segSelect ? 4'hb : _GEN_2; // @[SevenSegController.scala 29:21 32:22]
  wire [3:0] _GEN_4 = 2'h1 == segSelect ? 4'hd : _GEN_3; // @[SevenSegController.scala 29:21 31:22]
  wire [3:0] _GEN_5 = 2'h0 == segSelect ? 4'he : _GEN_4; // @[SevenSegController.scala 29:21 30:22]
  reg [5:0] secondCounter; // @[SevenSegController.scala 44:30]
  wire  secondCount = secondCounter == 6'h28 & firstCount; // @[SevenSegController.scala 45:46]
  wire [5:0] _secondCounter_T_1 = secondCounter + 6'h1; // @[SevenSegController.scala 47:36]
  reg  alarmSelect; // @[SevenSegController.scala 53:28]
  wire  _GEN_8 = io_alarm & ~alarmSelect; // @[SevenSegController.scala 55:21 56:19 58:19]
  reg [2:0] thirdCounter; // @[SevenSegController.scala 63:29]
  wire  thirdCount = thirdCounter == 3'h5 & secondCount; // @[SevenSegController.scala 64:43]
  wire [2:0] _thirdCounter_T_1 = thirdCounter + 3'h1; // @[SevenSegController.scala 66:34]
  reg [4:0] txtSelect; // @[SevenSegController.scala 72:26]
  wire [4:0] _txtSelect_T_1 = txtSelect + 5'h1; // @[SevenSegController.scala 74:28]
  wire [4:0] _GEN_36 = {{3'd0}, segSelect}; // @[SevenSegController.scala 91:38]
  wire [4:0] _sevSegChar_io_in_T_1 = txtSelect - _GEN_36; // @[SevenSegController.scala 91:38]
  wire [4:0] _sevSegChar_io_in_T_3 = _sevSegChar_io_in_T_1 + 5'h3; // @[SevenSegController.scala 91:50]
  wire [4:0] _GEN_15 = 5'h1 == _sevSegChar_io_in_T_3 ? 5'he : 5'h5; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_16 = 5'h2 == _sevSegChar_io_in_T_3 ? 5'he : _GEN_15; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_17 = 5'h3 == _sevSegChar_io_in_T_3 ? 5'h3 : _GEN_16; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_18 = 5'h4 == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_17; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_19 = 5'h5 == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_18; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_20 = 5'h6 == _sevSegChar_io_in_T_3 ? 5'h12 : _GEN_19; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_21 = 5'h7 == _sevSegChar_io_in_T_3 ? 5'he : _GEN_20; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_22 = 5'h8 == _sevSegChar_io_in_T_3 ? 5'h3 : _GEN_21; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_23 = 5'h9 == _sevSegChar_io_in_T_3 ? 5'h0 : _GEN_22; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_24 = 5'ha == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_23; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_25 = 5'hb == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_24; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_26 = 5'hc == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_25; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_27 = 5'hd == _sevSegChar_io_in_T_3 ? 5'h1a : _GEN_26; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_28 = 5'he == _sevSegChar_io_in_T_3 ? 5'h5 : _GEN_27; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_29 = 5'hf == _sevSegChar_io_in_T_3 ? 5'he : _GEN_28; // @[SevenSegController.scala 91:{20,20}]
  wire [4:0] _GEN_30 = 5'h10 == _sevSegChar_io_in_T_3 ? 5'he : _GEN_29; // @[SevenSegController.scala 91:{20,20}]
  wire [6:0] _io_seg_T = ~sevSegChar_io_out; // @[SevenSegController.scala 95:15]
  wire [6:0] _io_seg_T_1 = ~sevSegNum_io_out; // @[SevenSegController.scala 99:15]
  wire [6:0] _GEN_32 = alarmSelect ? 7'h7f : _io_seg_T_1; // @[SevenSegController.scala 96:28 97:12 99:12]
  wire [6:0] _GEN_33 = io_idleScreen ? _io_seg_T : _GEN_32; // @[SevenSegController.scala 94:24 95:12]
  SevenSegNum sevSegNum ( // @[SevenSegController.scala 15:25]
    .io_in(sevSegNum_io_in),
    .io_out(sevSegNum_io_out)
  );
  SevenSegChar sevSegChar ( // @[SevenSegController.scala 16:26]
    .io_in(sevSegChar_io_in),
    .io_out(sevSegChar_io_out)
  );
  BcdTable bcd ( // @[SevenSegController.scala 37:19]
    .io_address(bcd_io_address),
    .io_data(bcd_io_data)
  );
  assign io_seg = reset ? 7'h3f : _GEN_33; // @[SevenSegController.scala 103:23 104:12]
  assign io_an = reset ? 4'h0 : _GEN_5; // @[SevenSegController.scala 103:23 105:11]
  assign sevSegNum_io_in = segSelect[0] ? bcd_io_data[7:4] : bcd_io_data[3:0]; // @[SevenSegController.scala 41:25]
  assign sevSegChar_io_in = 5'h11 == _sevSegChar_io_in_T_3 ? 5'h3 : _GEN_30; // @[SevenSegController.scala 91:{20,20}]
  assign bcd_io_address = segSelect[1] ? io_sum : io_price; // @[SevenSegController.scala 38:24]
  always @(posedge clock) begin
    if (reset) begin // @[SevenSegController.scala 18:26]
      segSelect <= 2'h0; // @[SevenSegController.scala 18:26]
    end else if (firstCount) begin // @[SevenSegController.scala 23:20]
      segSelect <= _segSelect_T_1; // @[SevenSegController.scala 25:15]
    end
    if (reset) begin // @[SevenSegController.scala 19:29]
      firstCounter <= 17'h0; // @[SevenSegController.scala 19:29]
    end else if (firstCount) begin // @[SevenSegController.scala 23:20]
      firstCounter <= 17'h0; // @[SevenSegController.scala 24:18]
    end else begin
      firstCounter <= _firstCounter_T_1; // @[SevenSegController.scala 21:16]
    end
    if (reset) begin // @[SevenSegController.scala 44:30]
      secondCounter <= 6'h0; // @[SevenSegController.scala 44:30]
    end else if (firstCount) begin // @[SevenSegController.scala 46:21]
      if (secondCount) begin // @[SevenSegController.scala 48:24]
        secondCounter <= 6'h0; // @[SevenSegController.scala 49:21]
      end else begin
        secondCounter <= _secondCounter_T_1; // @[SevenSegController.scala 47:19]
      end
    end
    if (reset) begin // @[SevenSegController.scala 53:28]
      alarmSelect <= 1'h0; // @[SevenSegController.scala 53:28]
    end else if (secondCount) begin // @[SevenSegController.scala 54:22]
      alarmSelect <= _GEN_8;
    end
    if (reset) begin // @[SevenSegController.scala 63:29]
      thirdCounter <= 3'h0; // @[SevenSegController.scala 63:29]
    end else if (secondCount) begin // @[SevenSegController.scala 65:22]
      if (thirdCount) begin // @[SevenSegController.scala 67:22]
        thirdCounter <= 3'h0; // @[SevenSegController.scala 68:20]
      end else begin
        thirdCounter <= _thirdCounter_T_1; // @[SevenSegController.scala 66:18]
      end
    end
    if (reset) begin // @[SevenSegController.scala 72:26]
      txtSelect <= 5'h0; // @[SevenSegController.scala 72:26]
    end else if (thirdCount) begin // @[SevenSegController.scala 73:21]
      if (txtSelect == 5'hd) begin // @[SevenSegController.scala 75:31]
        txtSelect <= 5'h0; // @[SevenSegController.scala 76:17]
      end else begin
        txtSelect <= _txtSelect_T_1; // @[SevenSegController.scala 74:15]
      end
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
  segSelect = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  firstCounter = _RAND_1[16:0];
  _RAND_2 = {1{`RANDOM}};
  secondCounter = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  alarmSelect = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  thirdCounter = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  txtSelect = _RAND_5[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Top(
  input        clock,
  input        reset,
  input  [4:0] io_price,
  input        io_setPrice,
  input        io_coin2,
  input        io_coin5,
  input        io_buy,
  input        io_nextItem,
  output       io_releaseCan,
  output       io_alarm,
  output [6:0] io_seg,
  output [3:0] io_an
);
  wire  fsm_clock; // @[VendingMachine.scala 21:19]
  wire  fsm_reset; // @[VendingMachine.scala 21:19]
  wire  fsm_io_coin2; // @[VendingMachine.scala 21:19]
  wire  fsm_io_coin5; // @[VendingMachine.scala 21:19]
  wire  fsm_io_buy; // @[VendingMachine.scala 21:19]
  wire  fsm_io_nextItem; // @[VendingMachine.scala 21:19]
  wire  fsm_io_enoughMoney; // @[VendingMachine.scala 21:19]
  wire  fsm_io_alarm; // @[VendingMachine.scala 21:19]
  wire  fsm_io_releaseCan; // @[VendingMachine.scala 21:19]
  wire  fsm_io_idleScreen; // @[VendingMachine.scala 21:19]
  wire  fsm_io_add2; // @[VendingMachine.scala 21:19]
  wire  fsm_io_add5; // @[VendingMachine.scala 21:19]
  wire  fsm_io_purchase; // @[VendingMachine.scala 21:19]
  wire  fsm_io_cycle; // @[VendingMachine.scala 21:19]
  wire  datapath_clock; // @[VendingMachine.scala 22:24]
  wire  datapath_reset; // @[VendingMachine.scala 22:24]
  wire  datapath_io_add2; // @[VendingMachine.scala 22:24]
  wire  datapath_io_add5; // @[VendingMachine.scala 22:24]
  wire  datapath_io_cycle; // @[VendingMachine.scala 22:24]
  wire  datapath_io_purchase; // @[VendingMachine.scala 22:24]
  wire  datapath_io_setPrice; // @[VendingMachine.scala 22:24]
  wire [4:0] datapath_io_price; // @[VendingMachine.scala 22:24]
  wire [4:0] datapath_io_activePrice; // @[VendingMachine.scala 22:24]
  wire [7:0] datapath_io_sum; // @[VendingMachine.scala 22:24]
  wire  datapath_io_enoughMoney; // @[VendingMachine.scala 22:24]
  wire  sevSegController_clock; // @[VendingMachine.scala 38:32]
  wire  sevSegController_reset; // @[VendingMachine.scala 38:32]
  wire  sevSegController_io_idleScreen; // @[VendingMachine.scala 38:32]
  wire  sevSegController_io_alarm; // @[VendingMachine.scala 38:32]
  wire [7:0] sevSegController_io_price; // @[VendingMachine.scala 38:32]
  wire [7:0] sevSegController_io_sum; // @[VendingMachine.scala 38:32]
  wire [6:0] sevSegController_io_seg; // @[VendingMachine.scala 38:32]
  wire [3:0] sevSegController_io_an; // @[VendingMachine.scala 38:32]
  FSM fsm ( // @[VendingMachine.scala 21:19]
    .clock(fsm_clock),
    .reset(fsm_reset),
    .io_coin2(fsm_io_coin2),
    .io_coin5(fsm_io_coin5),
    .io_buy(fsm_io_buy),
    .io_nextItem(fsm_io_nextItem),
    .io_enoughMoney(fsm_io_enoughMoney),
    .io_alarm(fsm_io_alarm),
    .io_releaseCan(fsm_io_releaseCan),
    .io_idleScreen(fsm_io_idleScreen),
    .io_add2(fsm_io_add2),
    .io_add5(fsm_io_add5),
    .io_purchase(fsm_io_purchase),
    .io_cycle(fsm_io_cycle)
  );
  DataPath datapath ( // @[VendingMachine.scala 22:24]
    .clock(datapath_clock),
    .reset(datapath_reset),
    .io_add2(datapath_io_add2),
    .io_add5(datapath_io_add5),
    .io_cycle(datapath_io_cycle),
    .io_purchase(datapath_io_purchase),
    .io_setPrice(datapath_io_setPrice),
    .io_price(datapath_io_price),
    .io_activePrice(datapath_io_activePrice),
    .io_sum(datapath_io_sum),
    .io_enoughMoney(datapath_io_enoughMoney)
  );
  SevenSegController sevSegController ( // @[VendingMachine.scala 38:32]
    .clock(sevSegController_clock),
    .reset(sevSegController_reset),
    .io_idleScreen(sevSegController_io_idleScreen),
    .io_alarm(sevSegController_io_alarm),
    .io_price(sevSegController_io_price),
    .io_sum(sevSegController_io_sum),
    .io_seg(sevSegController_io_seg),
    .io_an(sevSegController_io_an)
  );
  assign io_releaseCan = fsm_io_releaseCan; // @[VendingMachine.scala 49:17]
  assign io_alarm = fsm_io_alarm; // @[VendingMachine.scala 50:12]
  assign io_seg = sevSegController_io_seg; // @[VendingMachine.scala 45:10]
  assign io_an = sevSegController_io_an; // @[VendingMachine.scala 46:9]
  assign fsm_clock = clock;
  assign fsm_reset = reset;
  assign fsm_io_coin2 = io_coin2; // @[VendingMachine.scala 24:16]
  assign fsm_io_coin5 = io_coin5; // @[VendingMachine.scala 25:16]
  assign fsm_io_buy = io_buy; // @[VendingMachine.scala 26:14]
  assign fsm_io_nextItem = io_nextItem; // @[VendingMachine.scala 27:19]
  assign fsm_io_enoughMoney = datapath_io_enoughMoney; // @[VendingMachine.scala 28:22]
  assign datapath_clock = clock;
  assign datapath_reset = reset;
  assign datapath_io_add2 = fsm_io_add2; // @[VendingMachine.scala 30:20]
  assign datapath_io_add5 = fsm_io_add5; // @[VendingMachine.scala 31:20]
  assign datapath_io_cycle = fsm_io_cycle; // @[VendingMachine.scala 34:21]
  assign datapath_io_purchase = fsm_io_purchase; // @[VendingMachine.scala 32:24]
  assign datapath_io_setPrice = io_setPrice; // @[VendingMachine.scala 35:24]
  assign datapath_io_price = io_price; // @[VendingMachine.scala 33:21]
  assign sevSegController_clock = clock;
  assign sevSegController_reset = reset;
  assign sevSegController_io_idleScreen = fsm_io_idleScreen; // @[VendingMachine.scala 40:34]
  assign sevSegController_io_alarm = fsm_io_alarm; // @[VendingMachine.scala 41:29]
  assign sevSegController_io_price = {{3'd0}, datapath_io_activePrice}; // @[VendingMachine.scala 42:29]
  assign sevSegController_io_sum = datapath_io_sum; // @[VendingMachine.scala 43:27]
endmodule
module VendingMachine(
  input        clock,
  input        reset,
  input  [4:0] io_price,
  input        io_setPrice,
  input        io_coin2,
  input        io_coin5,
  input        io_buy,
  input        io_nextItem,
  output       io_releaseCan,
  output       io_alarm,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  top_clock; // @[VendingMachine.scala 63:43]
  wire  top_reset; // @[VendingMachine.scala 63:43]
  wire [4:0] top_io_price; // @[VendingMachine.scala 63:43]
  wire  top_io_setPrice; // @[VendingMachine.scala 63:43]
  wire  top_io_coin2; // @[VendingMachine.scala 63:43]
  wire  top_io_coin5; // @[VendingMachine.scala 63:43]
  wire  top_io_buy; // @[VendingMachine.scala 63:43]
  wire  top_io_nextItem; // @[VendingMachine.scala 63:43]
  wire  top_io_releaseCan; // @[VendingMachine.scala 63:43]
  wire  top_io_alarm; // @[VendingMachine.scala 63:43]
  wire [6:0] top_io_seg; // @[VendingMachine.scala 63:43]
  wire [3:0] top_io_an; // @[VendingMachine.scala 63:43]
  reg  reset_sync; // @[VendingMachine.scala 56:27]
  reg  coin2_sync; // @[VendingMachine.scala 57:27]
  reg  coin5_sync; // @[VendingMachine.scala 58:27]
  reg  buy_sync; // @[VendingMachine.scala 59:25]
  reg  setPrice_sync; // @[VendingMachine.scala 60:30]
  reg  nextItem_sync; // @[VendingMachine.scala 61:30]
  Top top ( // @[VendingMachine.scala 63:43]
    .clock(top_clock),
    .reset(top_reset),
    .io_price(top_io_price),
    .io_setPrice(top_io_setPrice),
    .io_coin2(top_io_coin2),
    .io_coin5(top_io_coin5),
    .io_buy(top_io_buy),
    .io_nextItem(top_io_nextItem),
    .io_releaseCan(top_io_releaseCan),
    .io_alarm(top_io_alarm),
    .io_seg(top_io_seg),
    .io_an(top_io_an)
  );
  assign io_releaseCan = top_io_releaseCan; // @[VendingMachine.scala 65:10]
  assign io_alarm = top_io_alarm; // @[VendingMachine.scala 65:10]
  assign io_seg = top_io_seg; // @[VendingMachine.scala 65:10]
  assign io_an = top_io_an; // @[VendingMachine.scala 65:10]
  assign top_clock = clock;
  assign top_reset = reset_sync;
  assign top_io_price = io_price; // @[VendingMachine.scala 65:10]
  assign top_io_setPrice = setPrice_sync; // @[VendingMachine.scala 69:19]
  assign top_io_coin2 = coin2_sync; // @[VendingMachine.scala 66:16]
  assign top_io_coin5 = coin5_sync; // @[VendingMachine.scala 67:16]
  assign top_io_buy = buy_sync; // @[VendingMachine.scala 68:14]
  assign top_io_nextItem = nextItem_sync; // @[VendingMachine.scala 70:19]
  always @(posedge clock) begin
    reset_sync <= reset; // @[VendingMachine.scala 56:27]
    coin2_sync <= io_coin2; // @[VendingMachine.scala 57:27]
    coin5_sync <= io_coin5; // @[VendingMachine.scala 58:27]
    buy_sync <= io_buy; // @[VendingMachine.scala 59:25]
    setPrice_sync <= io_setPrice; // @[VendingMachine.scala 60:30]
    nextItem_sync <= io_nextItem; // @[VendingMachine.scala 61:30]
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
  reset_sync = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  coin2_sync = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  coin5_sync = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  buy_sync = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  setPrice_sync = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  nextItem_sync = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
