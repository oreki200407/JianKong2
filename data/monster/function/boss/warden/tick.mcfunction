###################################################
# 伏守者boss的tick
# 
# Name   : tick.mcfunction
# Path   : monster:boss/warden/
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#既然只有這條指令 那麼不須特意as 伏守者

#找不到伏守者boss 就停止一切
execute unless entity 44a2de4-b-0-5-5 run return run function monster:boss/warden/end