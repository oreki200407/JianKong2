###################################################
# 人體變形
# 
# Name   : root.mcfunction
# Path   : morph:tick/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

scoreboard players remove @s morph 1
execute if score @s morph matches 0 run return run function morph:player/end

#執行怪物的tick函數
$function morph:$(monster)/tick