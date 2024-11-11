circuit problem5 :
  module problem5 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip load : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>}, ser : UInt<1>}

    io.load.ready <= UInt<1>("h0") @[problem5.scala 10:17]
    node _io_ser_T = bits(io.load.bits, 0, 0) @[problem5.scala 12:27]
    io.ser <= _io_ser_T @[problem5.scala 12:10]

