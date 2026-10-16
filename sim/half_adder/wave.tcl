# 打开上次仿真生成的波形数据库，并把 DUT 的信号加到波形窗口
# 用 catch 包住 add_wave，万一信号路径不对也不会中断整个脚本
open_wave_database tb_sim.wdb

catch { add_wave /tb_half_adder/a    }
catch { add_wave /tb_half_adder/b    }
catch { add_wave /tb_half_adder/cout }
catch { add_wave /tb_half_adder/sum  }
