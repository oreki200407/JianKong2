###################################################
# 找到玻璃了
# 
# Name   : break_glass.mcfunction
# Path   : monster:break_glass/
# As     : 非玩家的監控者實體
# At     : 玻璃的位置
# Loop   : 是
# Author : Alex_Cai
###################################################

#有釘木板就算了
execute if block ~1 ~ ~ oak_sign run return fail
execute if block ~-1 ~ ~ oak_sign run return fail
execute if block ~ ~ ~1 oak_sign run return fail
execute if block ~ ~ ~-1 oak_sign run return fail

execute align xyz positioned ~.5 ~.5 ~.5 run function monster:break_glass/glass_position