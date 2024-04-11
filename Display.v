module BcdTable(
  input  [3:0] io_address,
  output [7:0] io_data
);
  wire [3:0] _GEN_1 = 4'h1 == io_address ? 4'h1 : 4'h0; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_2 = 4'h2 == io_address ? 4'h2 : _GEN_1; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_3 = 4'h3 == io_address ? 4'h3 : _GEN_2; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_4 = 4'h4 == io_address ? 4'h4 : _GEN_3; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_5 = 4'h5 == io_address ? 4'h5 : _GEN_4; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_6 = 4'h6 == io_address ? 4'h6 : _GEN_5; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_7 = 4'h7 == io_address ? 4'h7 : _GEN_6; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_8 = 4'h8 == io_address ? 4'h8 : _GEN_7; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_9 = 4'h9 == io_address ? 4'h9 : _GEN_8; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_10 = 4'ha == io_address ? 4'h0 : _GEN_9; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_11 = 4'hb == io_address ? 4'h1 : _GEN_10; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_12 = 4'hc == io_address ? 4'h2 : _GEN_11; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_13 = 4'hd == io_address ? 4'h3 : _GEN_12; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_14 = 4'he == io_address ? 4'h4 : _GEN_13; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_15 = 4'hf == io_address ? 4'h5 : _GEN_14; // @[BcdTable.scala 15:{11,11}]
  wire [4:0] _GEN_100 = {{1'd0}, io_address}; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_16 = 5'h10 == _GEN_100 ? 4'h6 : _GEN_15; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_17 = 5'h11 == _GEN_100 ? 4'h7 : _GEN_16; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_18 = 5'h12 == _GEN_100 ? 4'h8 : _GEN_17; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_19 = 5'h13 == _GEN_100 ? 4'h9 : _GEN_18; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_20 = 5'h14 == _GEN_100 ? 4'h0 : _GEN_19; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_21 = 5'h15 == _GEN_100 ? 4'h1 : _GEN_20; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_22 = 5'h16 == _GEN_100 ? 4'h2 : _GEN_21; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_23 = 5'h17 == _GEN_100 ? 4'h3 : _GEN_22; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_24 = 5'h18 == _GEN_100 ? 4'h4 : _GEN_23; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_25 = 5'h19 == _GEN_100 ? 4'h5 : _GEN_24; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_26 = 5'h1a == _GEN_100 ? 4'h6 : _GEN_25; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_27 = 5'h1b == _GEN_100 ? 4'h7 : _GEN_26; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_28 = 5'h1c == _GEN_100 ? 4'h8 : _GEN_27; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_29 = 5'h1d == _GEN_100 ? 4'h9 : _GEN_28; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_30 = 5'h1e == _GEN_100 ? 4'h0 : _GEN_29; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_31 = 5'h1f == _GEN_100 ? 4'h1 : _GEN_30; // @[BcdTable.scala 15:{11,11}]
  wire [5:0] _GEN_116 = {{2'd0}, io_address}; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_32 = 6'h20 == _GEN_116 ? 4'h2 : _GEN_31; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_33 = 6'h21 == _GEN_116 ? 4'h3 : _GEN_32; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_34 = 6'h22 == _GEN_116 ? 4'h4 : _GEN_33; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_35 = 6'h23 == _GEN_116 ? 4'h5 : _GEN_34; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_36 = 6'h24 == _GEN_116 ? 4'h6 : _GEN_35; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_37 = 6'h25 == _GEN_116 ? 4'h7 : _GEN_36; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_38 = 6'h26 == _GEN_116 ? 4'h8 : _GEN_37; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_39 = 6'h27 == _GEN_116 ? 4'h9 : _GEN_38; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_40 = 6'h28 == _GEN_116 ? 4'h0 : _GEN_39; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_41 = 6'h29 == _GEN_116 ? 4'h1 : _GEN_40; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_42 = 6'h2a == _GEN_116 ? 4'h2 : _GEN_41; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_43 = 6'h2b == _GEN_116 ? 4'h3 : _GEN_42; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_44 = 6'h2c == _GEN_116 ? 4'h4 : _GEN_43; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_45 = 6'h2d == _GEN_116 ? 4'h5 : _GEN_44; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_46 = 6'h2e == _GEN_116 ? 4'h6 : _GEN_45; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_47 = 6'h2f == _GEN_116 ? 4'h7 : _GEN_46; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_48 = 6'h30 == _GEN_116 ? 4'h8 : _GEN_47; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_49 = 6'h31 == _GEN_116 ? 4'h9 : _GEN_48; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_50 = 6'h32 == _GEN_116 ? 4'h0 : _GEN_49; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_51 = 6'h33 == _GEN_116 ? 4'h1 : _GEN_50; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_52 = 6'h34 == _GEN_116 ? 4'h2 : _GEN_51; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_53 = 6'h35 == _GEN_116 ? 4'h3 : _GEN_52; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_54 = 6'h36 == _GEN_116 ? 4'h4 : _GEN_53; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_55 = 6'h37 == _GEN_116 ? 4'h5 : _GEN_54; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_56 = 6'h38 == _GEN_116 ? 4'h6 : _GEN_55; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_57 = 6'h39 == _GEN_116 ? 4'h7 : _GEN_56; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_58 = 6'h3a == _GEN_116 ? 4'h8 : _GEN_57; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_59 = 6'h3b == _GEN_116 ? 4'h9 : _GEN_58; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_60 = 6'h3c == _GEN_116 ? 4'h0 : _GEN_59; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_61 = 6'h3d == _GEN_116 ? 4'h1 : _GEN_60; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_62 = 6'h3e == _GEN_116 ? 4'h2 : _GEN_61; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_63 = 6'h3f == _GEN_116 ? 4'h3 : _GEN_62; // @[BcdTable.scala 15:{11,11}]
  wire [6:0] _GEN_148 = {{3'd0}, io_address}; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_64 = 7'h40 == _GEN_148 ? 4'h4 : _GEN_63; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_65 = 7'h41 == _GEN_148 ? 4'h5 : _GEN_64; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_66 = 7'h42 == _GEN_148 ? 4'h6 : _GEN_65; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_67 = 7'h43 == _GEN_148 ? 4'h7 : _GEN_66; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_68 = 7'h44 == _GEN_148 ? 4'h8 : _GEN_67; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_69 = 7'h45 == _GEN_148 ? 4'h9 : _GEN_68; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_70 = 7'h46 == _GEN_148 ? 4'h0 : _GEN_69; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_71 = 7'h47 == _GEN_148 ? 4'h1 : _GEN_70; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_72 = 7'h48 == _GEN_148 ? 4'h2 : _GEN_71; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_73 = 7'h49 == _GEN_148 ? 4'h3 : _GEN_72; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_74 = 7'h4a == _GEN_148 ? 4'h4 : _GEN_73; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_75 = 7'h4b == _GEN_148 ? 4'h5 : _GEN_74; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_76 = 7'h4c == _GEN_148 ? 4'h6 : _GEN_75; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_77 = 7'h4d == _GEN_148 ? 4'h7 : _GEN_76; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_78 = 7'h4e == _GEN_148 ? 4'h8 : _GEN_77; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_79 = 7'h4f == _GEN_148 ? 4'h9 : _GEN_78; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_80 = 7'h50 == _GEN_148 ? 4'h0 : _GEN_79; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_81 = 7'h51 == _GEN_148 ? 4'h1 : _GEN_80; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_82 = 7'h52 == _GEN_148 ? 4'h2 : _GEN_81; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_83 = 7'h53 == _GEN_148 ? 4'h3 : _GEN_82; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_84 = 7'h54 == _GEN_148 ? 4'h4 : _GEN_83; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_85 = 7'h55 == _GEN_148 ? 4'h5 : _GEN_84; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_86 = 7'h56 == _GEN_148 ? 4'h6 : _GEN_85; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_87 = 7'h57 == _GEN_148 ? 4'h7 : _GEN_86; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_88 = 7'h58 == _GEN_148 ? 4'h8 : _GEN_87; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_89 = 7'h59 == _GEN_148 ? 4'h9 : _GEN_88; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_90 = 7'h5a == _GEN_148 ? 4'h0 : _GEN_89; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_91 = 7'h5b == _GEN_148 ? 4'h1 : _GEN_90; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_92 = 7'h5c == _GEN_148 ? 4'h2 : _GEN_91; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_93 = 7'h5d == _GEN_148 ? 4'h3 : _GEN_92; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_94 = 7'h5e == _GEN_148 ? 4'h4 : _GEN_93; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_95 = 7'h5f == _GEN_148 ? 4'h5 : _GEN_94; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_96 = 7'h60 == _GEN_148 ? 4'h6 : _GEN_95; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_97 = 7'h61 == _GEN_148 ? 4'h7 : _GEN_96; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_98 = 7'h62 == _GEN_148 ? 4'h8 : _GEN_97; // @[BcdTable.scala 15:{11,11}]
  wire [3:0] _GEN_99 = 7'h63 == _GEN_148 ? 4'h9 : _GEN_98; // @[BcdTable.scala 15:{11,11}]
  assign io_data = {{4'd0}, _GEN_99}; // @[BcdTable.scala 15:11]
endmodule
module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_1 = 4'h1 == io_in ? 7'h79 : 7'h40; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_2 = 4'h2 == io_in ? 7'h24 : _GEN_1; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_3 = 4'h3 == io_in ? 7'h30 : _GEN_2; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_4 = 4'h4 == io_in ? 7'h19 : _GEN_3; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_5 = 4'h5 == io_in ? 7'h12 : _GEN_4; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_6 = 4'h6 == io_in ? 7'h2 : _GEN_5; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_7 = 4'h7 == io_in ? 7'h78 : _GEN_6; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_8 = 4'h8 == io_in ? 7'h0 : _GEN_7; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_9 = 4'h9 == io_in ? 7'h10 : _GEN_8; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_10 = 4'ha == io_in ? 7'h8 : _GEN_9; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_11 = 4'hb == io_in ? 7'h3 : _GEN_10; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_12 = 4'hc == io_in ? 7'h46 : _GEN_11; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_13 = 4'hd == io_in ? 7'h21 : _GEN_12; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_14 = 4'he == io_in ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 33:{13,13}]
  wire [6:0] _GEN_15 = 4'hf == io_in ? 7'he : _GEN_14; // @[SevenSegDec.scala 33:{13,13}]
  assign io_out = ~_GEN_15; // @[SevenSegDec.scala 33:13]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] bcd_io_address; // @[DisplayMultiplexer.scala 16:19]
  wire [7:0] bcd_io_data; // @[DisplayMultiplexer.scala 16:19]
  wire [3:0] mySevSeg_io_in; // @[DisplayMultiplexer.scala 17:24]
  wire [6:0] mySevSeg_io_out; // @[DisplayMultiplexer.scala 17:24]
  reg [1:0] segSelect; // @[DisplayMultiplexer.scala 18:26]
  reg [16:0] counter; // @[DisplayMultiplexer.scala 19:24]
  wire [16:0] _counter_T_1 = counter + 17'h1; // @[DisplayMultiplexer.scala 21:22]
  wire [1:0] _segSelect_T_1 = segSelect + 2'h1; // @[DisplayMultiplexer.scala 23:28]
  wire  _T_1 = 2'h0 == segSelect; // @[DisplayMultiplexer.scala 28:21]
  wire  _T_2 = 2'h1 == segSelect; // @[DisplayMultiplexer.scala 28:21]
  wire  _T_3 = 2'h2 == segSelect; // @[DisplayMultiplexer.scala 28:21]
  wire  _T_4 = 2'h3 == segSelect; // @[DisplayMultiplexer.scala 28:21]
  wire [3:0] _GEN_2 = 2'h3 == segSelect ? 4'h8 : 4'h1; // @[DisplayMultiplexer.scala 28:21 32:22 13:27]
  wire [3:0] _GEN_3 = 2'h2 == segSelect ? 4'h4 : _GEN_2; // @[DisplayMultiplexer.scala 28:21 31:22]
  wire [3:0] _GEN_4 = 2'h1 == segSelect ? 4'h2 : _GEN_3; // @[DisplayMultiplexer.scala 28:21 30:22]
  wire [3:0] select = 2'h0 == segSelect ? 4'h1 : _GEN_4; // @[DisplayMultiplexer.scala 28:21 29:22]
  wire [7:0] priceBCD = bcd_io_data; // @[DisplayMultiplexer.scala 35:29 37:12]
  wire [3:0] _GEN_6 = _T_4 ? priceBCD[7:4] : 4'h0; // @[DisplayMultiplexer.scala 46:21 50:19 43:23]
  wire [3:0] _GEN_7 = _T_3 ? priceBCD[3:0] : _GEN_6; // @[DisplayMultiplexer.scala 46:21 49:19]
  wire [3:0] _GEN_8 = _T_2 ? priceBCD[7:4] : _GEN_7; // @[DisplayMultiplexer.scala 46:21 48:19]
  wire [6:0] sevSeg = mySevSeg_io_out; // @[DisplayMultiplexer.scala 12:27 54:10]
  BcdTable bcd ( // @[DisplayMultiplexer.scala 16:19]
    .io_address(bcd_io_address),
    .io_data(bcd_io_data)
  );
  SevenSegDec mySevSeg ( // @[DisplayMultiplexer.scala 17:24]
    .io_in(mySevSeg_io_in),
    .io_out(mySevSeg_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 57:13]
  assign io_an = ~select; // @[DisplayMultiplexer.scala 58:12]
  assign bcd_io_address = io_sum[3:0]; // @[DisplayMultiplexer.scala 40:18]
  assign mySevSeg_io_in = _T_1 ? priceBCD[3:0] : _GEN_8; // @[DisplayMultiplexer.scala 46:21 47:19]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 18:26]
      segSelect <= 2'h0; // @[DisplayMultiplexer.scala 18:26]
    end else if (counter == 17'h186a0) begin // @[DisplayMultiplexer.scala 22:32]
      segSelect <= _segSelect_T_1; // @[DisplayMultiplexer.scala 23:15]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 19:24]
      counter <= 17'h0; // @[DisplayMultiplexer.scala 19:24]
    end else if (counter == 17'h186a0) begin // @[DisplayMultiplexer.scala 22:32]
      counter <= 17'h0; // @[DisplayMultiplexer.scala 24:13]
    end else begin
      counter <= _counter_T_1; // @[DisplayMultiplexer.scala 21:11]
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
  counter = _RAND_1[16:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 15:23]
  wire  dispMux_reset; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
endmodule
