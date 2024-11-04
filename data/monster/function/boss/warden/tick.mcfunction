###################################################
# 伏守者boss的tick
# 
# Name   : tick.mcfunction
# Path   : monster:boss/warden/
# As     : 伏守者boss
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#必須由伏守者執行 不能用世界重生點執行
execute unless entity @s[tag=boss] as 44a2de4-b-0-5-5 run return run function monster:boss/warden/tick

#找不到伏守者boss 就停止一切
execute unless entity @s run return run function monster:boss/warden/end

#每tick執行
schedule function monster:boss/warden/tick 1

execute store result bossbar jk2:boss max run data get entity @s Health