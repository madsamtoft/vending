circuit problem1 :
  module problem1 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip sample : UInt<28>, flip clr : UInt<1>, average : UInt<24>, valid : UInt<1>}

    io.valid <= UInt<1>("h0") @[problem1.scala 12:12]
    reg sum : UInt<28>, clock with :
      reset => (reset, UInt<28>("h0")) @[problem1.scala 15:20]
    reg cnt : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[problem1.scala 16:20]
    node _sum_T = add(io.sample, sum) @[problem1.scala 19:45]
    node _sum_T_1 = tail(_sum_T, 1) @[problem1.scala 19:45]
    node _sum_T_2 = mux(io.valid, io.sample, _sum_T_1) @[problem1.scala 19:13]
    sum <= _sum_T_2 @[problem1.scala 19:7]
    node _T = eq(UInt<1>("h0"), io.clr) @[problem1.scala 22:18]
    when _T : @[problem1.scala 22:18]
      node _cnt_T = add(cnt, UInt<1>("h1")) @[problem1.scala 23:29]
      node _cnt_T_1 = tail(_cnt_T, 1) @[problem1.scala 23:29]
      cnt <= _cnt_T_1 @[problem1.scala 23:22]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.clr) @[problem1.scala 22:18]
      when _T_1 : @[problem1.scala 22:18]
        cnt <= UInt<1>("h0") @[problem1.scala 24:21]
    node _T_2 = eq(cnt, UInt<1>("h0")) @[problem1.scala 28:12]
    when _T_2 : @[problem1.scala 28:21]
      io.valid <= UInt<1>("h1") @[problem1.scala 29:14]
    node _io_average_T = shr(sum, 4) @[problem1.scala 31:21]
    io.average <= _io_average_T @[problem1.scala 31:14]

