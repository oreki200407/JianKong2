###################################################
# 找到玻璃了
# 
# Name   : looking_at_glass.mcfunction
# Path   : monster:break_glass/
# As     : 非玩家的監控者實體
# At     : 玻璃的位置
# Loop   : 是
# Author : Alex_Cai
###################################################

#衛道士無視木板
execute if entity @s[type=vindicator, tag=vindicator] align xyz positioned ~.5 ~.5 ~.5 run return run function monster:break_glass/glass_position

#其他的有釘木板就算了
execute if block ~1 ~ ~ oak_sign run return fail
execute if block ~-1 ~ ~ oak_sign run return fail
execute if block ~ ~ ~1 oak_sign run return fail
execute if block ~ ~ ~-1 oak_sign run return fail

execute align xyz positioned ~.5 ~.5 ~.5 run function monster:break_glass/glass_position