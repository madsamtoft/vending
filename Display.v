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
module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h71 : 7'h0; // @[SevenSegDec.scala 13:17 29:24 10:27]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[SevenSegDec.scala 13:17 28:24]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[SevenSegDec.scala 13:17 27:24]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h58 : _GEN_2; // @[SevenSegDec.scala 13:17 26:24]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[SevenSegDec.scala 13:17 25:24]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h77 : _GEN_4; // @[SevenSegDec.scala 13:17 24:24]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[SevenSegDec.scala 13:17 23:24]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[SevenSegDec.scala 13:17 22:24]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[SevenSegDec.scala 13:17 21:24]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[SevenSegDec.scala 13:17 20:24]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[SevenSegDec.scala 13:17 19:24]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[SevenSegDec.scala 13:17 18:24]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[SevenSegDec.scala 13:17 17:24]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[SevenSegDec.scala 13:17 16:24]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 13:17 15:24]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[SevenSegDec.scala 13:17 14:24]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] bcdPrice_io_address; // @[DisplayMultiplexer.scala 17:24]
  wire [7:0] bcdPrice_io_data; // @[DisplayMultiplexer.scala 17:24]
  wire [7:0] bcdSum_io_address; // @[DisplayMultiplexer.scala 18:22]
  wire [7:0] bcdSum_io_data; // @[DisplayMultiplexer.scala 18:22]
  wire [3:0] mySevSeg_io_in; // @[DisplayMultiplexer.scala 21:24]
  wire [6:0] mySevSeg_io_out; // @[DisplayMultiplexer.scala 21:24]
  reg [1:0] segSelect; // @[DisplayMultiplexer.scala 24:26]
  reg [16:0] counter; // @[DisplayMultiplexer.scala 27:24]
  wire [16:0] _counter_T_1 = counter + 17'h1; // @[DisplayMultiplexer.scala 29:22]
  wire [1:0] _segSelect_T_1 = segSelect + 2'h1; // @[DisplayMultiplexer.scala 31:28]
  wire  _T_1 = 2'h0 == segSelect; // @[DisplayMultiplexer.scala 36:21]
  wire  _T_2 = 2'h1 == segSelect; // @[DisplayMultiplexer.scala 36:21]
  wire  _T_3 = 2'h2 == segSelect; // @[DisplayMultiplexer.scala 36:21]
  wire  _T_4 = 2'h3 == segSelect; // @[DisplayMultiplexer.scala 36:21]
  wire [3:0] _GEN_2 = 2'h3 == segSelect ? 4'h8 : 4'h1; // @[DisplayMultiplexer.scala 36:21 40:22 13:27]
  wire [3:0] _GEN_3 = 2'h2 == segSelect ? 4'h4 : _GEN_2; // @[DisplayMultiplexer.scala 36:21 39:22]
  wire [3:0] _GEN_4 = 2'h1 == segSelect ? 4'h2 : _GEN_3; // @[DisplayMultiplexer.scala 36:21 38:22]
  wire [3:0] select = 2'h0 == segSelect ? 4'h1 : _GEN_4; // @[DisplayMultiplexer.scala 36:21 37:22]
  wire [3:0] _GEN_6 = _T_4 ? bcdSum_io_data[7:4] : 4'h0; // @[DisplayMultiplexer.scala 48:21 52:19 43:23]
  wire [3:0] _GEN_7 = _T_3 ? bcdSum_io_data[3:0] : _GEN_6; // @[DisplayMultiplexer.scala 48:21 51:19]
  wire [3:0] _GEN_8 = _T_2 ? bcdPrice_io_data[7:4] : _GEN_7; // @[DisplayMultiplexer.scala 48:21 50:19]
  wire [6:0] sevSeg = mySevSeg_io_out; // @[DisplayMultiplexer.scala 12:27 56:10]
  BcdTable bcdPrice ( // @[DisplayMultiplexer.scala 17:24]
    .io_address(bcdPrice_io_address),
    .io_data(bcdPrice_io_data)
  );
  BcdTable bcdSum ( // @[DisplayMultiplexer.scala 18:22]
    .io_address(bcdSum_io_address),
    .io_data(bcdSum_io_data)
  );
  SevenSegDec mySevSeg ( // @[DisplayMultiplexer.scala 21:24]
    .io_in(mySevSeg_io_in),
    .io_out(mySevSeg_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 59:13]
  assign io_an = ~select; // @[DisplayMultiplexer.scala 60:12]
  assign bcdPrice_io_address = io_price; // @[DisplayMultiplexer.scala 44:23]
  assign bcdSum_io_address = io_sum; // @[DisplayMultiplexer.scala 45:21]
  assign mySevSeg_io_in = _T_1 ? bcdPrice_io_data[3:0] : _GEN_8; // @[DisplayMultiplexer.scala 48:21 49:19]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 24:26]
      segSelect <= 2'h0; // @[DisplayMultiplexer.scala 24:26]
    end else if (counter == 17'h186a0) begin // @[DisplayMultiplexer.scala 30:32]
      segSelect <= _segSelect_T_1; // @[DisplayMultiplexer.scala 31:15]
    end
    if (reset) begin // @[DisplayMultiplexer.scala 27:24]
      counter <= 17'h0; // @[DisplayMultiplexer.scala 27:24]
    end else if (counter == 17'h186a0) begin // @[DisplayMultiplexer.scala 30:32]
      counter <= 17'h0; // @[DisplayMultiplexer.scala 32:13]
    end else begin
      counter <= _counter_T_1; // @[DisplayMultiplexer.scala 29:11]
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
  wire [7:0] dispMux_io_price; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 18:28]
endmodule
