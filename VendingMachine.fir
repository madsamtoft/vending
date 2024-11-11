circuit VendingMachine :
  module FSM :
    input clock : Clock
    input reset : Reset
    output io : { flip coin2 : UInt<1>, flip coin5 : UInt<1>, flip buy : UInt<1>, flip nextItem : UInt<1>, flip enoughMoney : UInt<1>, alarm : UInt<1>, releaseCan : UInt<1>, idleScreen : UInt<1>, add2 : UInt<1>, add5 : UInt<1>, purchase : UInt<1>, cycle : UInt<1>}

    io.idleScreen <= UInt<1>("h0") @[FSM.scala 19:17]
    reg stateReg : UInt<3>, clock with :
      reset => (reset, UInt<1>("h1")) @[FSM.scala 33:25]
    node _T = asUInt(UInt<1>("h1")) @[FSM.scala 36:23]
    node _T_1 = asUInt(stateReg) @[FSM.scala 36:23]
    node _T_2 = eq(_T, _T_1) @[FSM.scala 36:23]
    when _T_2 : @[FSM.scala 36:23]
      node _T_3 = or(io.coin2, io.coin5) @[FSM.scala 38:21]
      node _T_4 = or(_T_3, io.buy) @[FSM.scala 38:32]
      node _T_5 = or(_T_4, io.nextItem) @[FSM.scala 38:41]
      when _T_5 : @[FSM.scala 38:56]
        stateReg <= UInt<1>("h0") @[FSM.scala 39:18]
    else :
      node _T_6 = asUInt(UInt<1>("h0")) @[FSM.scala 36:23]
      node _T_7 = asUInt(stateReg) @[FSM.scala 36:23]
      node _T_8 = eq(_T_6, _T_7) @[FSM.scala 36:23]
      when _T_8 : @[FSM.scala 36:23]
        reg REG : UInt<1>, clock with :
          reset => (UInt<1>("h0"), REG) @[FSM.scala 23:21]
        REG <= io.coin2 @[FSM.scala 23:21]
        node _T_9 = eq(REG, UInt<1>("h0")) @[FSM.scala 23:13]
        node _T_10 = and(io.coin2, _T_9) @[FSM.scala 23:11]
        when _T_10 : @[FSM.scala 43:35]
          stateReg <= UInt<2>("h2") @[FSM.scala 44:18]
        else :
          reg REG_1 : UInt<1>, clock with :
            reset => (UInt<1>("h0"), REG_1) @[FSM.scala 23:21]
          REG_1 <= io.coin5 @[FSM.scala 23:21]
          node _T_11 = eq(REG_1, UInt<1>("h0")) @[FSM.scala 23:13]
          node _T_12 = and(io.coin5, _T_11) @[FSM.scala 23:11]
          when _T_12 : @[FSM.scala 45:42]
            stateReg <= UInt<2>("h3") @[FSM.scala 46:18]
          else :
            reg REG_2 : UInt<1>, clock with :
              reset => (UInt<1>("h0"), REG_2) @[FSM.scala 23:21]
            REG_2 <= io.buy @[FSM.scala 23:21]
            node _T_13 = eq(REG_2, UInt<1>("h0")) @[FSM.scala 23:13]
            node _T_14 = and(io.buy, _T_13) @[FSM.scala 23:11]
            when _T_14 : @[FSM.scala 47:40]
              stateReg <= UInt<3>("h4") @[FSM.scala 48:18]
            else :
              reg REG_3 : UInt<1>, clock with :
                reset => (UInt<1>("h0"), REG_3) @[FSM.scala 23:21]
              REG_3 <= io.nextItem @[FSM.scala 23:21]
              node _T_15 = eq(REG_3, UInt<1>("h0")) @[FSM.scala 23:13]
              node _T_16 = and(io.nextItem, _T_15) @[FSM.scala 23:11]
              when _T_16 : @[FSM.scala 49:45]
                stateReg <= UInt<3>("h5") @[FSM.scala 50:18]
      else :
        node _T_17 = asUInt(UInt<2>("h2")) @[FSM.scala 36:23]
        node _T_18 = asUInt(stateReg) @[FSM.scala 36:23]
        node _T_19 = eq(_T_17, _T_18) @[FSM.scala 36:23]
        when _T_19 : @[FSM.scala 36:23]
          stateReg <= UInt<1>("h0") @[FSM.scala 54:16]
        else :
          node _T_20 = asUInt(UInt<2>("h3")) @[FSM.scala 36:23]
          node _T_21 = asUInt(stateReg) @[FSM.scala 36:23]
          node _T_22 = eq(_T_20, _T_21) @[FSM.scala 36:23]
          when _T_22 : @[FSM.scala 36:23]
            stateReg <= UInt<1>("h0") @[FSM.scala 57:16]
          else :
            node _T_23 = asUInt(UInt<3>("h4")) @[FSM.scala 36:23]
            node _T_24 = asUInt(stateReg) @[FSM.scala 36:23]
            node _T_25 = eq(_T_23, _T_24) @[FSM.scala 36:23]
            when _T_25 : @[FSM.scala 36:23]
              node _T_26 = eq(io.enoughMoney, UInt<1>("h0")) @[FSM.scala 60:27]
              when _T_26 : @[FSM.scala 60:40]
                stateReg <= UInt<3>("h6") @[FSM.scala 61:18]
              else :
                stateReg <= UInt<3>("h7") @[FSM.scala 63:18]
            else :
              node _T_27 = asUInt(UInt<3>("h5")) @[FSM.scala 36:23]
              node _T_28 = asUInt(stateReg) @[FSM.scala 36:23]
              node _T_29 = eq(_T_27, _T_28) @[FSM.scala 36:23]
              when _T_29 : @[FSM.scala 36:23]
                stateReg <= UInt<1>("h0") @[FSM.scala 67:16]
              else :
                node _T_30 = asUInt(UInt<3>("h7")) @[FSM.scala 36:23]
                node _T_31 = asUInt(stateReg) @[FSM.scala 36:23]
                node _T_32 = eq(_T_30, _T_31) @[FSM.scala 36:23]
                when _T_32 : @[FSM.scala 36:23]
                  node _T_33 = eq(io.buy, UInt<1>("h0")) @[FSM.scala 70:12]
                  when _T_33 : @[FSM.scala 70:21]
                    stateReg <= UInt<1>("h0") @[FSM.scala 71:18]
                else :
                  node _T_34 = asUInt(UInt<3>("h6")) @[FSM.scala 36:23]
                  node _T_35 = asUInt(stateReg) @[FSM.scala 36:23]
                  node _T_36 = eq(_T_34, _T_35) @[FSM.scala 36:23]
                  when _T_36 : @[FSM.scala 36:23]
                    node _T_37 = eq(io.buy, UInt<1>("h0")) @[FSM.scala 75:12]
                    when _T_37 : @[FSM.scala 75:21]
                      stateReg <= UInt<1>("h0") @[FSM.scala 76:18]
    node _io_idleScreen_T = eq(stateReg, UInt<1>("h1")) @[FSM.scala 81:30]
    io.idleScreen <= _io_idleScreen_T @[FSM.scala 81:17]
    node _io_add2_T = eq(stateReg, UInt<2>("h2")) @[FSM.scala 82:30]
    io.add2 <= _io_add2_T @[FSM.scala 82:17]
    node _io_add5_T = eq(stateReg, UInt<2>("h3")) @[FSM.scala 83:30]
    io.add5 <= _io_add5_T @[FSM.scala 83:17]
    node _io_cycle_T = eq(stateReg, UInt<3>("h5")) @[FSM.scala 84:30]
    io.cycle <= _io_cycle_T @[FSM.scala 84:17]
    node _io_purchase_T = eq(stateReg, UInt<3>("h4")) @[FSM.scala 85:30]
    node _io_purchase_T_1 = and(_io_purchase_T, io.enoughMoney) @[FSM.scala 85:38]
    io.purchase <= _io_purchase_T_1 @[FSM.scala 85:17]
    node _io_alarm_T = eq(stateReg, UInt<3>("h6")) @[FSM.scala 86:30]
    io.alarm <= _io_alarm_T @[FSM.scala 86:17]
    node _io_releaseCan_T = eq(stateReg, UInt<3>("h7")) @[FSM.scala 87:30]
    io.releaseCan <= _io_releaseCan_T @[FSM.scala 87:17]

  module DataPath :
    input clock : Clock
    input reset : Reset
    output io : { flip add2 : UInt<1>, flip add5 : UInt<1>, flip cycle : UInt<1>, flip purchase : UInt<1>, flip setPrice : UInt<1>, flip price : UInt<5>, activePrice : UInt<5>, sum : UInt<8>, enoughMoney : UInt<1>}

    reg priceAddr : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[DataPath.scala 17:26]
    node _T = eq(io.cycle, UInt<1>("h1")) @[DataPath.scala 18:18]
    when _T : @[DataPath.scala 18:30]
      node _priceAddr_T = add(priceAddr, UInt<1>("h1")) @[DataPath.scala 19:28]
      node _priceAddr_T_1 = tail(_priceAddr_T, 1) @[DataPath.scala 19:28]
      priceAddr <= _priceAddr_T_1 @[DataPath.scala 19:15]
    smem priceMem : UInt<5> [4] @[DataPath.scala 22:29]
    wire _price_WIRE : UInt @[DataPath.scala 23:28]
    _price_WIRE is invalid @[DataPath.scala 23:28]
    when UInt<1>("h1") : @[DataPath.scala 23:28]
      _price_WIRE <= priceAddr @[DataPath.scala 23:28]
      node _price_T = or(_price_WIRE, UInt<2>("h0")) @[DataPath.scala 23:28]
      node _price_T_1 = bits(_price_T, 1, 0) @[DataPath.scala 23:28]
      read mport price = priceMem[_price_T_1], clock @[DataPath.scala 23:28]
    io.activePrice <= price @[DataPath.scala 24:18]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[DataPath.scala 26:31]
    REG <= io.setPrice @[DataPath.scala 26:31]
    node _T_1 = eq(REG, UInt<1>("h0")) @[DataPath.scala 26:23]
    node _T_2 = and(io.setPrice, _T_1) @[DataPath.scala 26:21]
    when _T_2 : @[DataPath.scala 26:46]
      write mport MPORT = priceMem[priceAddr], clock
      MPORT <= io.price
    reg sum : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[DataPath.scala 30:20]
    io.sum <= sum @[DataPath.scala 31:10]
    node _io_enoughMoney_T = geq(sum, price) @[DataPath.scala 32:26]
    io.enoughMoney <= _io_enoughMoney_T @[DataPath.scala 32:18]
    node _T_3 = eq(io.add2, UInt<1>("h1")) @[DataPath.scala 34:17]
    when _T_3 : @[DataPath.scala 34:29]
      node _T_4 = lt(sum, UInt<7>("h62")) @[DataPath.scala 35:14]
      when _T_4 : @[DataPath.scala 35:22]
        node _sum_T = add(sum, UInt<2>("h2")) @[DataPath.scala 36:18]
        node _sum_T_1 = tail(_sum_T, 1) @[DataPath.scala 36:18]
        sum <= _sum_T_1 @[DataPath.scala 36:11]
      else :
        sum <= UInt<7>("h63") @[DataPath.scala 38:11]
    else :
      node _T_5 = eq(io.add5, UInt<1>("h1")) @[DataPath.scala 40:23]
      when _T_5 : @[DataPath.scala 40:35]
        node _T_6 = lt(sum, UInt<7>("h5f")) @[DataPath.scala 41:14]
        when _T_6 : @[DataPath.scala 41:22]
          node _sum_T_2 = add(sum, UInt<3>("h5")) @[DataPath.scala 42:18]
          node _sum_T_3 = tail(_sum_T_2, 1) @[DataPath.scala 42:18]
          sum <= _sum_T_3 @[DataPath.scala 42:11]
        else :
          sum <= UInt<7>("h63") @[DataPath.scala 44:11]
      else :
        node _T_7 = eq(io.purchase, UInt<1>("h1")) @[DataPath.scala 46:28]
        when _T_7 : @[DataPath.scala 46:40]
          node _sum_T_4 = sub(sum, price) @[DataPath.scala 47:16]
          node _sum_T_5 = tail(_sum_T_4, 1) @[DataPath.scala 47:16]
          sum <= _sum_T_5 @[DataPath.scala 47:9]


  module SevenSegNum :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<4>, out : UInt<7>}

    wire sevSeg : UInt @[SevenSegNum.scala 10:27]
    sevSeg <= UInt<1>("h0") @[SevenSegNum.scala 10:27]
    node _T = eq(UInt<1>("h0"), io.in) @[SevenSegNum.scala 14:17]
    when _T : @[SevenSegNum.scala 14:17]
      sevSeg <= UInt<6>("h3f") @[SevenSegNum.scala 15:24]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[SevenSegNum.scala 14:17]
      when _T_1 : @[SevenSegNum.scala 14:17]
        sevSeg <= UInt<3>("h6") @[SevenSegNum.scala 16:24]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[SevenSegNum.scala 14:17]
        when _T_2 : @[SevenSegNum.scala 14:17]
          sevSeg <= UInt<7>("h5b") @[SevenSegNum.scala 17:24]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[SevenSegNum.scala 14:17]
          when _T_3 : @[SevenSegNum.scala 14:17]
            sevSeg <= UInt<7>("h4f") @[SevenSegNum.scala 18:24]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[SevenSegNum.scala 14:17]
            when _T_4 : @[SevenSegNum.scala 14:17]
              sevSeg <= UInt<7>("h66") @[SevenSegNum.scala 19:24]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[SevenSegNum.scala 14:17]
              when _T_5 : @[SevenSegNum.scala 14:17]
                sevSeg <= UInt<7>("h6d") @[SevenSegNum.scala 20:24]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[SevenSegNum.scala 14:17]
                when _T_6 : @[SevenSegNum.scala 14:17]
                  sevSeg <= UInt<7>("h7d") @[SevenSegNum.scala 21:24]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[SevenSegNum.scala 14:17]
                  when _T_7 : @[SevenSegNum.scala 14:17]
                    sevSeg <= UInt<3>("h7") @[SevenSegNum.scala 22:24]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[SevenSegNum.scala 14:17]
                    when _T_8 : @[SevenSegNum.scala 14:17]
                      sevSeg <= UInt<7>("h7f") @[SevenSegNum.scala 23:24]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[SevenSegNum.scala 14:17]
                      when _T_9 : @[SevenSegNum.scala 14:17]
                        sevSeg <= UInt<7>("h6f") @[SevenSegNum.scala 24:24]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[SevenSegNum.scala 14:17]
                        when _T_10 : @[SevenSegNum.scala 14:17]
                          sevSeg <= UInt<7>("h77") @[SevenSegNum.scala 25:24]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[SevenSegNum.scala 14:17]
                          when _T_11 : @[SevenSegNum.scala 14:17]
                            sevSeg <= UInt<7>("h7c") @[SevenSegNum.scala 26:24]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[SevenSegNum.scala 14:17]
                            when _T_12 : @[SevenSegNum.scala 14:17]
                              sevSeg <= UInt<7>("h58") @[SevenSegNum.scala 27:24]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[SevenSegNum.scala 14:17]
                              when _T_13 : @[SevenSegNum.scala 14:17]
                                sevSeg <= UInt<7>("h5e") @[SevenSegNum.scala 28:24]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[SevenSegNum.scala 14:17]
                                when _T_14 : @[SevenSegNum.scala 14:17]
                                  sevSeg <= UInt<7>("h79") @[SevenSegNum.scala 29:24]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[SevenSegNum.scala 14:17]
                                  when _T_15 : @[SevenSegNum.scala 14:17]
                                    sevSeg <= UInt<7>("h7f") @[SevenSegNum.scala 31:24]
    io.out <= sevSeg @[SevenSegNum.scala 36:10]

  module SevenSegChar :
    input clock : Clock
    input reset : Reset
    output io : { flip in : UInt<5>, out : UInt<7>}

    wire sevSeg : UInt @[SevenSegChar.scala 10:27]
    sevSeg <= UInt<1>("h0") @[SevenSegChar.scala 10:27]
    node _T = eq(UInt<1>("h0"), io.in) @[SevenSegChar.scala 12:17]
    when _T : @[SevenSegChar.scala 12:17]
      sevSeg <= UInt<7>("h77") @[SevenSegChar.scala 13:23]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.in) @[SevenSegChar.scala 12:17]
      when _T_1 : @[SevenSegChar.scala 12:17]
        sevSeg <= UInt<7>("h7c") @[SevenSegChar.scala 14:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.in) @[SevenSegChar.scala 12:17]
        when _T_2 : @[SevenSegChar.scala 12:17]
          sevSeg <= UInt<6>("h39") @[SevenSegChar.scala 15:23]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.in) @[SevenSegChar.scala 12:17]
          when _T_3 : @[SevenSegChar.scala 12:17]
            sevSeg <= UInt<7>("h5e") @[SevenSegChar.scala 16:23]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.in) @[SevenSegChar.scala 12:17]
            when _T_4 : @[SevenSegChar.scala 12:17]
              sevSeg <= UInt<7>("h79") @[SevenSegChar.scala 17:23]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.in) @[SevenSegChar.scala 12:17]
              when _T_5 : @[SevenSegChar.scala 12:17]
                sevSeg <= UInt<7>("h71") @[SevenSegChar.scala 18:23]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.in) @[SevenSegChar.scala 12:17]
                when _T_6 : @[SevenSegChar.scala 12:17]
                  sevSeg <= UInt<6>("h3d") @[SevenSegChar.scala 19:23]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.in) @[SevenSegChar.scala 12:17]
                  when _T_7 : @[SevenSegChar.scala 12:17]
                    sevSeg <= UInt<7>("h76") @[SevenSegChar.scala 20:23]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.in) @[SevenSegChar.scala 12:17]
                    when _T_8 : @[SevenSegChar.scala 12:17]
                      sevSeg <= UInt<6>("h30") @[SevenSegChar.scala 21:23]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.in) @[SevenSegChar.scala 12:17]
                      when _T_9 : @[SevenSegChar.scala 12:17]
                        sevSeg <= UInt<5>("h1e") @[SevenSegChar.scala 22:23]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.in) @[SevenSegChar.scala 12:17]
                        when _T_10 : @[SevenSegChar.scala 12:17]
                          sevSeg <= UInt<7>("h75") @[SevenSegChar.scala 23:24]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.in) @[SevenSegChar.scala 12:17]
                          when _T_11 : @[SevenSegChar.scala 12:17]
                            sevSeg <= UInt<6>("h38") @[SevenSegChar.scala 24:24]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.in) @[SevenSegChar.scala 12:17]
                            when _T_12 : @[SevenSegChar.scala 12:17]
                              sevSeg <= UInt<5>("h15") @[SevenSegChar.scala 25:24]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.in) @[SevenSegChar.scala 12:17]
                              when _T_13 : @[SevenSegChar.scala 12:17]
                                sevSeg <= UInt<6>("h37") @[SevenSegChar.scala 26:24]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.in) @[SevenSegChar.scala 12:17]
                                when _T_14 : @[SevenSegChar.scala 12:17]
                                  sevSeg <= UInt<7>("h5c") @[SevenSegChar.scala 27:24]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.in) @[SevenSegChar.scala 12:17]
                                  when _T_15 : @[SevenSegChar.scala 12:17]
                                    sevSeg <= UInt<7>("h73") @[SevenSegChar.scala 28:24]
                                  else :
                                    node _T_16 = eq(UInt<5>("h10"), io.in) @[SevenSegChar.scala 12:17]
                                    when _T_16 : @[SevenSegChar.scala 12:17]
                                      sevSeg <= UInt<7>("h6b") @[SevenSegChar.scala 29:24]
                                    else :
                                      node _T_17 = eq(UInt<5>("h11"), io.in) @[SevenSegChar.scala 12:17]
                                      when _T_17 : @[SevenSegChar.scala 12:17]
                                        sevSeg <= UInt<6>("h31") @[SevenSegChar.scala 30:24]
                                      else :
                                        node _T_18 = eq(UInt<5>("h12"), io.in) @[SevenSegChar.scala 12:17]
                                        when _T_18 : @[SevenSegChar.scala 12:17]
                                          sevSeg <= UInt<7>("h6d") @[SevenSegChar.scala 31:24]
                                        else :
                                          node _T_19 = eq(UInt<5>("h13"), io.in) @[SevenSegChar.scala 12:17]
                                          when _T_19 : @[SevenSegChar.scala 12:17]
                                            sevSeg <= UInt<7>("h78") @[SevenSegChar.scala 32:24]
                                          else :
                                            node _T_20 = eq(UInt<5>("h14"), io.in) @[SevenSegChar.scala 12:17]
                                            when _T_20 : @[SevenSegChar.scala 12:17]
                                              sevSeg <= UInt<6>("h3e") @[SevenSegChar.scala 33:24]
                                            else :
                                              node _T_21 = eq(UInt<5>("h15"), io.in) @[SevenSegChar.scala 12:17]
                                              when _T_21 : @[SevenSegChar.scala 12:17]
                                                sevSeg <= UInt<6>("h3e") @[SevenSegChar.scala 34:24]
                                              else :
                                                node _T_22 = eq(UInt<5>("h16"), io.in) @[SevenSegChar.scala 12:17]
                                                when _T_22 : @[SevenSegChar.scala 12:17]
                                                  sevSeg <= UInt<6>("h2a") @[SevenSegChar.scala 35:24]
                                                else :
                                                  node _T_23 = eq(UInt<5>("h17"), io.in) @[SevenSegChar.scala 12:17]
                                                  when _T_23 : @[SevenSegChar.scala 12:17]
                                                    sevSeg <= UInt<7>("h76") @[SevenSegChar.scala 36:24]
                                                  else :
                                                    node _T_24 = eq(UInt<5>("h18"), io.in) @[SevenSegChar.scala 12:17]
                                                    when _T_24 : @[SevenSegChar.scala 12:17]
                                                      sevSeg <= UInt<7>("h6e") @[SevenSegChar.scala 37:24]
                                                    else :
                                                      node _T_25 = eq(UInt<5>("h19"), io.in) @[SevenSegChar.scala 12:17]
                                                      when _T_25 : @[SevenSegChar.scala 12:17]
                                                        sevSeg <= UInt<7>("h5b") @[SevenSegChar.scala 38:24]
                                                      else :
                                                        node _T_26 = eq(UInt<5>("h1a"), io.in) @[SevenSegChar.scala 12:17]
                                                        when _T_26 : @[SevenSegChar.scala 12:17]
                                                          sevSeg <= UInt<1>("h0") @[SevenSegChar.scala 39:24]
                                                        else :
                                                          node _T_27 = eq(UInt<5>("h1b"), io.in) @[SevenSegChar.scala 12:17]
                                                          when _T_27 : @[SevenSegChar.scala 12:17]
                                                            sevSeg <= UInt<7>("h7f") @[SevenSegChar.scala 40:24]
                                                          else :
                                                            node _T_28 = eq(UInt<5>("h1c"), io.in) @[SevenSegChar.scala 12:17]
                                                            when _T_28 : @[SevenSegChar.scala 12:17]
                                                              sevSeg <= UInt<7>("h7f") @[SevenSegChar.scala 41:24]
                                                            else :
                                                              node _T_29 = eq(UInt<5>("h1d"), io.in) @[SevenSegChar.scala 12:17]
                                                              when _T_29 : @[SevenSegChar.scala 12:17]
                                                                sevSeg <= UInt<7>("h7f") @[SevenSegChar.scala 42:24]
                                                              else :
                                                                node _T_30 = eq(UInt<5>("h1e"), io.in) @[SevenSegChar.scala 12:17]
                                                                when _T_30 : @[SevenSegChar.scala 12:17]
                                                                  sevSeg <= UInt<7>("h7f") @[SevenSegChar.scala 43:24]
                                                                else :
                                                                  node _T_31 = eq(UInt<5>("h1f"), io.in) @[SevenSegChar.scala 12:17]
                                                                  when _T_31 : @[SevenSegChar.scala 12:17]
                                                                    sevSeg <= UInt<7>("h7f") @[SevenSegChar.scala 44:24]
    io.out <= sevSeg @[SevenSegChar.scala 46:10]

  module BcdTable :
    input clock : Clock
    input reset : Reset
    output io : { flip address : UInt<8>, data : UInt<8>}

    wire table : UInt<8>[100] @[BcdTable.scala 8:19]
    table[0] <= UInt<1>("h0") @[BcdTable.scala 12:14]
    table[1] <= UInt<1>("h1") @[BcdTable.scala 12:14]
    table[2] <= UInt<2>("h2") @[BcdTable.scala 12:14]
    table[3] <= UInt<2>("h3") @[BcdTable.scala 12:14]
    table[4] <= UInt<3>("h4") @[BcdTable.scala 12:14]
    table[5] <= UInt<3>("h5") @[BcdTable.scala 12:14]
    table[6] <= UInt<3>("h6") @[BcdTable.scala 12:14]
    table[7] <= UInt<3>("h7") @[BcdTable.scala 12:14]
    table[8] <= UInt<4>("h8") @[BcdTable.scala 12:14]
    table[9] <= UInt<4>("h9") @[BcdTable.scala 12:14]
    table[10] <= UInt<5>("h10") @[BcdTable.scala 12:14]
    table[11] <= UInt<5>("h11") @[BcdTable.scala 12:14]
    table[12] <= UInt<5>("h12") @[BcdTable.scala 12:14]
    table[13] <= UInt<5>("h13") @[BcdTable.scala 12:14]
    table[14] <= UInt<5>("h14") @[BcdTable.scala 12:14]
    table[15] <= UInt<5>("h15") @[BcdTable.scala 12:14]
    table[16] <= UInt<5>("h16") @[BcdTable.scala 12:14]
    table[17] <= UInt<5>("h17") @[BcdTable.scala 12:14]
    table[18] <= UInt<5>("h18") @[BcdTable.scala 12:14]
    table[19] <= UInt<5>("h19") @[BcdTable.scala 12:14]
    table[20] <= UInt<6>("h20") @[BcdTable.scala 12:14]
    table[21] <= UInt<6>("h21") @[BcdTable.scala 12:14]
    table[22] <= UInt<6>("h22") @[BcdTable.scala 12:14]
    table[23] <= UInt<6>("h23") @[BcdTable.scala 12:14]
    table[24] <= UInt<6>("h24") @[BcdTable.scala 12:14]
    table[25] <= UInt<6>("h25") @[BcdTable.scala 12:14]
    table[26] <= UInt<6>("h26") @[BcdTable.scala 12:14]
    table[27] <= UInt<6>("h27") @[BcdTable.scala 12:14]
    table[28] <= UInt<6>("h28") @[BcdTable.scala 12:14]
    table[29] <= UInt<6>("h29") @[BcdTable.scala 12:14]
    table[30] <= UInt<6>("h30") @[BcdTable.scala 12:14]
    table[31] <= UInt<6>("h31") @[BcdTable.scala 12:14]
    table[32] <= UInt<6>("h32") @[BcdTable.scala 12:14]
    table[33] <= UInt<6>("h33") @[BcdTable.scala 12:14]
    table[34] <= UInt<6>("h34") @[BcdTable.scala 12:14]
    table[35] <= UInt<6>("h35") @[BcdTable.scala 12:14]
    table[36] <= UInt<6>("h36") @[BcdTable.scala 12:14]
    table[37] <= UInt<6>("h37") @[BcdTable.scala 12:14]
    table[38] <= UInt<6>("h38") @[BcdTable.scala 12:14]
    table[39] <= UInt<6>("h39") @[BcdTable.scala 12:14]
    table[40] <= UInt<7>("h40") @[BcdTable.scala 12:14]
    table[41] <= UInt<7>("h41") @[BcdTable.scala 12:14]
    table[42] <= UInt<7>("h42") @[BcdTable.scala 12:14]
    table[43] <= UInt<7>("h43") @[BcdTable.scala 12:14]
    table[44] <= UInt<7>("h44") @[BcdTable.scala 12:14]
    table[45] <= UInt<7>("h45") @[BcdTable.scala 12:14]
    table[46] <= UInt<7>("h46") @[BcdTable.scala 12:14]
    table[47] <= UInt<7>("h47") @[BcdTable.scala 12:14]
    table[48] <= UInt<7>("h48") @[BcdTable.scala 12:14]
    table[49] <= UInt<7>("h49") @[BcdTable.scala 12:14]
    table[50] <= UInt<7>("h50") @[BcdTable.scala 12:14]
    table[51] <= UInt<7>("h51") @[BcdTable.scala 12:14]
    table[52] <= UInt<7>("h52") @[BcdTable.scala 12:14]
    table[53] <= UInt<7>("h53") @[BcdTable.scala 12:14]
    table[54] <= UInt<7>("h54") @[BcdTable.scala 12:14]
    table[55] <= UInt<7>("h55") @[BcdTable.scala 12:14]
    table[56] <= UInt<7>("h56") @[BcdTable.scala 12:14]
    table[57] <= UInt<7>("h57") @[BcdTable.scala 12:14]
    table[58] <= UInt<7>("h58") @[BcdTable.scala 12:14]
    table[59] <= UInt<7>("h59") @[BcdTable.scala 12:14]
    table[60] <= UInt<7>("h60") @[BcdTable.scala 12:14]
    table[61] <= UInt<7>("h61") @[BcdTable.scala 12:14]
    table[62] <= UInt<7>("h62") @[BcdTable.scala 12:14]
    table[63] <= UInt<7>("h63") @[BcdTable.scala 12:14]
    table[64] <= UInt<7>("h64") @[BcdTable.scala 12:14]
    table[65] <= UInt<7>("h65") @[BcdTable.scala 12:14]
    table[66] <= UInt<7>("h66") @[BcdTable.scala 12:14]
    table[67] <= UInt<7>("h67") @[BcdTable.scala 12:14]
    table[68] <= UInt<7>("h68") @[BcdTable.scala 12:14]
    table[69] <= UInt<7>("h69") @[BcdTable.scala 12:14]
    table[70] <= UInt<7>("h70") @[BcdTable.scala 12:14]
    table[71] <= UInt<7>("h71") @[BcdTable.scala 12:14]
    table[72] <= UInt<7>("h72") @[BcdTable.scala 12:14]
    table[73] <= UInt<7>("h73") @[BcdTable.scala 12:14]
    table[74] <= UInt<7>("h74") @[BcdTable.scala 12:14]
    table[75] <= UInt<7>("h75") @[BcdTable.scala 12:14]
    table[76] <= UInt<7>("h76") @[BcdTable.scala 12:14]
    table[77] <= UInt<7>("h77") @[BcdTable.scala 12:14]
    table[78] <= UInt<7>("h78") @[BcdTable.scala 12:14]
    table[79] <= UInt<7>("h79") @[BcdTable.scala 12:14]
    table[80] <= UInt<8>("h80") @[BcdTable.scala 12:14]
    table[81] <= UInt<8>("h81") @[BcdTable.scala 12:14]
    table[82] <= UInt<8>("h82") @[BcdTable.scala 12:14]
    table[83] <= UInt<8>("h83") @[BcdTable.scala 12:14]
    table[84] <= UInt<8>("h84") @[BcdTable.scala 12:14]
    table[85] <= UInt<8>("h85") @[BcdTable.scala 12:14]
    table[86] <= UInt<8>("h86") @[BcdTable.scala 12:14]
    table[87] <= UInt<8>("h87") @[BcdTable.scala 12:14]
    table[88] <= UInt<8>("h88") @[BcdTable.scala 12:14]
    table[89] <= UInt<8>("h89") @[BcdTable.scala 12:14]
    table[90] <= UInt<8>("h90") @[BcdTable.scala 12:14]
    table[91] <= UInt<8>("h91") @[BcdTable.scala 12:14]
    table[92] <= UInt<8>("h92") @[BcdTable.scala 12:14]
    table[93] <= UInt<8>("h93") @[BcdTable.scala 12:14]
    table[94] <= UInt<8>("h94") @[BcdTable.scala 12:14]
    table[95] <= UInt<8>("h95") @[BcdTable.scala 12:14]
    table[96] <= UInt<8>("h96") @[BcdTable.scala 12:14]
    table[97] <= UInt<8>("h97") @[BcdTable.scala 12:14]
    table[98] <= UInt<8>("h98") @[BcdTable.scala 12:14]
    table[99] <= UInt<8>("h99") @[BcdTable.scala 12:14]
    node _io_data_T = bits(io.address, 6, 0)
    io.data <= table[_io_data_T] @[BcdTable.scala 15:11]

  module SevenSegController :
    input clock : Clock
    input reset : Reset
    output io : { flip idleScreen : UInt<1>, flip alarm : UInt<1>, flip price : UInt<8>, flip sum : UInt<8>, seg : UInt<7>, an : UInt<4>}

    inst sevSegNum of SevenSegNum @[SevenSegController.scala 15:25]
    sevSegNum.clock <= clock
    sevSegNum.reset <= reset
    inst sevSegChar of SevenSegChar @[SevenSegController.scala 16:26]
    sevSegChar.clock <= clock
    sevSegChar.reset <= reset
    reg segSelect : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[SevenSegController.scala 18:26]
    reg firstCounter : UInt<17>, clock with :
      reset => (reset, UInt<17>("h0")) @[SevenSegController.scala 19:29]
    node _firstCounter_T = add(firstCounter, UInt<1>("h1")) @[SevenSegController.scala 21:32]
    node _firstCounter_T_1 = tail(_firstCounter_T, 1) @[SevenSegController.scala 21:32]
    firstCounter <= _firstCounter_T_1 @[SevenSegController.scala 21:16]
    node firstCount = eq(firstCounter, UInt<17>("h186a0")) @[SevenSegController.scala 22:34]
    when firstCount : @[SevenSegController.scala 23:20]
      firstCounter <= UInt<1>("h0") @[SevenSegController.scala 24:18]
      node _segSelect_T = add(segSelect, UInt<1>("h1")) @[SevenSegController.scala 25:28]
      node _segSelect_T_1 = tail(_segSelect_T, 1) @[SevenSegController.scala 25:28]
      segSelect <= _segSelect_T_1 @[SevenSegController.scala 25:15]
    io.an <= UInt<4>("hf") @[SevenSegController.scala 28:9]
    node _T = eq(UInt<1>("h0"), segSelect) @[SevenSegController.scala 29:21]
    when _T : @[SevenSegController.scala 29:21]
      io.an <= UInt<4>("he") @[SevenSegController.scala 30:22]
    else :
      node _T_1 = eq(UInt<1>("h1"), segSelect) @[SevenSegController.scala 29:21]
      when _T_1 : @[SevenSegController.scala 29:21]
        io.an <= UInt<4>("hd") @[SevenSegController.scala 31:22]
      else :
        node _T_2 = eq(UInt<2>("h2"), segSelect) @[SevenSegController.scala 29:21]
        when _T_2 : @[SevenSegController.scala 29:21]
          io.an <= UInt<4>("hb") @[SevenSegController.scala 32:22]
        else :
          node _T_3 = eq(UInt<2>("h3"), segSelect) @[SevenSegController.scala 29:21]
          when _T_3 : @[SevenSegController.scala 29:21]
            io.an <= UInt<3>("h7") @[SevenSegController.scala 33:22]
    inst bcd of BcdTable @[SevenSegController.scala 37:19]
    bcd.clock <= clock
    bcd.reset <= reset
    node _bcd_io_address_T = bits(segSelect, 1, 1) @[SevenSegController.scala 38:34]
    node _bcd_io_address_T_1 = mux(_bcd_io_address_T, io.sum, io.price) @[SevenSegController.scala 38:24]
    bcd.io.address <= _bcd_io_address_T_1 @[SevenSegController.scala 38:18]
    node _sevSegNum_io_in_T = bits(segSelect, 0, 0) @[SevenSegController.scala 41:35]
    node _sevSegNum_io_in_T_1 = bits(bcd.io.data, 7, 4) @[SevenSegController.scala 41:51]
    node _sevSegNum_io_in_T_2 = bits(bcd.io.data, 3, 0) @[SevenSegController.scala 41:69]
    node _sevSegNum_io_in_T_3 = mux(_sevSegNum_io_in_T, _sevSegNum_io_in_T_1, _sevSegNum_io_in_T_2) @[SevenSegController.scala 41:25]
    sevSegNum.io.in <= _sevSegNum_io_in_T_3 @[SevenSegController.scala 41:19]
    reg secondCounter : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[SevenSegController.scala 44:30]
    node _secondCount_T = eq(secondCounter, UInt<6>("h28")) @[SevenSegController.scala 45:36]
    node secondCount = and(_secondCount_T, firstCount) @[SevenSegController.scala 45:46]
    when firstCount : @[SevenSegController.scala 46:21]
      node _secondCounter_T = add(secondCounter, UInt<1>("h1")) @[SevenSegController.scala 47:36]
      node _secondCounter_T_1 = tail(_secondCounter_T, 1) @[SevenSegController.scala 47:36]
      secondCounter <= _secondCounter_T_1 @[SevenSegController.scala 47:19]
      when secondCount : @[SevenSegController.scala 48:24]
        secondCounter <= UInt<1>("h0") @[SevenSegController.scala 49:21]
    reg alarmSelect : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[SevenSegController.scala 53:28]
    when secondCount : @[SevenSegController.scala 54:22]
      when io.alarm : @[SevenSegController.scala 55:21]
        node _alarmSelect_T = not(alarmSelect) @[SevenSegController.scala 56:22]
        alarmSelect <= _alarmSelect_T @[SevenSegController.scala 56:19]
      else :
        alarmSelect <= UInt<1>("h0") @[SevenSegController.scala 58:19]
    reg thirdCounter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[SevenSegController.scala 63:29]
    node _thirdCount_T = eq(thirdCounter, UInt<3>("h5")) @[SevenSegController.scala 64:34]
    node thirdCount = and(_thirdCount_T, secondCount) @[SevenSegController.scala 64:43]
    when secondCount : @[SevenSegController.scala 65:22]
      node _thirdCounter_T = add(thirdCounter, UInt<1>("h1")) @[SevenSegController.scala 66:34]
      node _thirdCounter_T_1 = tail(_thirdCounter_T, 1) @[SevenSegController.scala 66:34]
      thirdCounter <= _thirdCounter_T_1 @[SevenSegController.scala 66:18]
      when thirdCount : @[SevenSegController.scala 67:22]
        thirdCounter <= UInt<1>("h0") @[SevenSegController.scala 68:20]
    reg txtSelect : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[SevenSegController.scala 72:26]
    when thirdCount : @[SevenSegController.scala 73:21]
      node _txtSelect_T = add(txtSelect, UInt<1>("h1")) @[SevenSegController.scala 74:28]
      node _txtSelect_T_1 = tail(_txtSelect_T, 1) @[SevenSegController.scala 74:28]
      txtSelect <= _txtSelect_T_1 @[SevenSegController.scala 74:15]
      node _T_4 = eq(txtSelect, UInt<4>("hd")) @[SevenSegController.scala 75:21]
      when _T_4 : @[SevenSegController.scala 75:31]
        txtSelect <= UInt<1>("h0") @[SevenSegController.scala 76:17]
    wire text : UInt<5>[18] @[SevenSegController.scala 81:18]
    text[0] <= UInt<3>("h5") @[SevenSegController.scala 87:15]
    text[1] <= UInt<4>("he") @[SevenSegController.scala 87:15]
    text[2] <= UInt<4>("he") @[SevenSegController.scala 87:15]
    text[3] <= UInt<2>("h3") @[SevenSegController.scala 87:15]
    text[4] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[5] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[6] <= UInt<5>("h12") @[SevenSegController.scala 87:15]
    text[7] <= UInt<4>("he") @[SevenSegController.scala 87:15]
    text[8] <= UInt<2>("h3") @[SevenSegController.scala 87:15]
    text[9] <= UInt<1>("h0") @[SevenSegController.scala 87:15]
    text[10] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[11] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[12] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[13] <= UInt<5>("h1a") @[SevenSegController.scala 85:15]
    text[14] <= UInt<3>("h5") @[SevenSegController.scala 87:15]
    text[15] <= UInt<4>("he") @[SevenSegController.scala 87:15]
    text[16] <= UInt<4>("he") @[SevenSegController.scala 87:15]
    text[17] <= UInt<2>("h3") @[SevenSegController.scala 87:15]
    node _sevSegChar_io_in_T = sub(txtSelect, segSelect) @[SevenSegController.scala 91:38]
    node _sevSegChar_io_in_T_1 = tail(_sevSegChar_io_in_T, 1) @[SevenSegController.scala 91:38]
    node _sevSegChar_io_in_T_2 = add(_sevSegChar_io_in_T_1, UInt<2>("h3")) @[SevenSegController.scala 91:50]
    node _sevSegChar_io_in_T_3 = tail(_sevSegChar_io_in_T_2, 1) @[SevenSegController.scala 91:50]
    sevSegChar.io.in <= text[_sevSegChar_io_in_T_3] @[SevenSegController.scala 91:20]
    when io.idleScreen : @[SevenSegController.scala 94:24]
      node _io_seg_T = not(sevSegChar.io.out) @[SevenSegController.scala 95:15]
      io.seg <= _io_seg_T @[SevenSegController.scala 95:12]
    else :
      when alarmSelect : @[SevenSegController.scala 96:28]
        io.seg <= UInt<7>("h7f") @[SevenSegController.scala 97:12]
      else :
        node _io_seg_T_1 = not(sevSegNum.io.out) @[SevenSegController.scala 99:15]
        io.seg <= _io_seg_T_1 @[SevenSegController.scala 99:12]
    node _T_5 = asUInt(reset) @[SevenSegController.scala 103:15]
    when _T_5 : @[SevenSegController.scala 103:23]
      io.seg <= UInt<6>("h3f") @[SevenSegController.scala 104:12]
      io.an <= UInt<1>("h0") @[SevenSegController.scala 105:11]


  module Top :
    input clock : Clock
    input reset : Reset
    output io : { flip price : UInt<5>, flip setPrice : UInt<1>, flip coin2 : UInt<1>, flip coin5 : UInt<1>, flip buy : UInt<1>, flip nextItem : UInt<1>, releaseCan : UInt<1>, alarm : UInt<1>, seg : UInt<7>, an : UInt<4>}

    inst fsm of FSM @[VendingMachine.scala 21:19]
    fsm.clock <= clock
    fsm.reset <= reset
    inst datapath of DataPath @[VendingMachine.scala 22:24]
    datapath.clock <= clock
    datapath.reset <= reset
    fsm.io.coin2 <= io.coin2 @[VendingMachine.scala 24:16]
    fsm.io.coin5 <= io.coin5 @[VendingMachine.scala 25:16]
    fsm.io.buy <= io.buy @[VendingMachine.scala 26:14]
    fsm.io.nextItem <= io.nextItem @[VendingMachine.scala 27:19]
    fsm.io.enoughMoney <= datapath.io.enoughMoney @[VendingMachine.scala 28:22]
    datapath.io.add2 <= fsm.io.add2 @[VendingMachine.scala 30:20]
    datapath.io.add5 <= fsm.io.add5 @[VendingMachine.scala 31:20]
    datapath.io.purchase <= fsm.io.purchase @[VendingMachine.scala 32:24]
    datapath.io.price <= io.price @[VendingMachine.scala 33:21]
    datapath.io.cycle <= fsm.io.cycle @[VendingMachine.scala 34:21]
    datapath.io.setPrice <= io.setPrice @[VendingMachine.scala 35:24]
    inst sevSegController of SevenSegController @[VendingMachine.scala 38:32]
    sevSegController.clock <= clock
    sevSegController.reset <= reset
    sevSegController.io.idleScreen <= fsm.io.idleScreen @[VendingMachine.scala 40:34]
    sevSegController.io.alarm <= fsm.io.alarm @[VendingMachine.scala 41:29]
    sevSegController.io.price <= datapath.io.activePrice @[VendingMachine.scala 42:29]
    sevSegController.io.sum <= datapath.io.sum @[VendingMachine.scala 43:27]
    io.seg <= sevSegController.io.seg @[VendingMachine.scala 45:10]
    io.an <= sevSegController.io.an @[VendingMachine.scala 46:9]
    io.releaseCan <= fsm.io.releaseCan @[VendingMachine.scala 49:17]
    io.alarm <= fsm.io.alarm @[VendingMachine.scala 50:12]

  module VendingMachine :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip price : UInt<5>, flip setPrice : UInt<1>, flip coin2 : UInt<1>, flip coin5 : UInt<1>, flip buy : UInt<1>, flip nextItem : UInt<1>, releaseCan : UInt<1>, alarm : UInt<1>, seg : UInt<7>, an : UInt<4>}

    reg reset_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), reset_sync) @[VendingMachine.scala 56:27]
    reset_sync <= reset @[VendingMachine.scala 56:27]
    reg coin2_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), coin2_sync) @[VendingMachine.scala 57:27]
    coin2_sync <= io.coin2 @[VendingMachine.scala 57:27]
    reg coin5_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), coin5_sync) @[VendingMachine.scala 58:27]
    coin5_sync <= io.coin5 @[VendingMachine.scala 58:27]
    reg buy_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), buy_sync) @[VendingMachine.scala 59:25]
    buy_sync <= io.buy @[VendingMachine.scala 59:25]
    reg setPrice_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), setPrice_sync) @[VendingMachine.scala 60:30]
    setPrice_sync <= io.setPrice @[VendingMachine.scala 60:30]
    reg nextItem_sync : UInt<1>, clock with :
      reset => (UInt<1>("h0"), nextItem_sync) @[VendingMachine.scala 61:30]
    nextItem_sync <= io.nextItem @[VendingMachine.scala 61:30]
    inst top of Top @[VendingMachine.scala 63:43]
    top.clock <= clock
    top.reset <= reset_sync
    io.an <= top.io.an @[VendingMachine.scala 65:10]
    io.seg <= top.io.seg @[VendingMachine.scala 65:10]
    io.alarm <= top.io.alarm @[VendingMachine.scala 65:10]
    io.releaseCan <= top.io.releaseCan @[VendingMachine.scala 65:10]
    top.io.nextItem <= io.nextItem @[VendingMachine.scala 65:10]
    top.io.buy <= io.buy @[VendingMachine.scala 65:10]
    top.io.coin5 <= io.coin5 @[VendingMachine.scala 65:10]
    top.io.coin2 <= io.coin2 @[VendingMachine.scala 65:10]
    top.io.setPrice <= io.setPrice @[VendingMachine.scala 65:10]
    top.io.price <= io.price @[VendingMachine.scala 65:10]
    top.io.coin2 <= coin2_sync @[VendingMachine.scala 66:16]
    top.io.coin5 <= coin5_sync @[VendingMachine.scala 67:16]
    top.io.buy <= buy_sync @[VendingMachine.scala 68:14]
    top.io.setPrice <= setPrice_sync @[VendingMachine.scala 69:19]
    top.io.nextItem <= nextItem_sync @[VendingMachine.scala 70:19]

