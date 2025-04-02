###################################################
# 偵測附近有沒有牆壁
# 
# Name   : tick.mcfunction
# Path   : morph:spider/
# As     : 變形成蜘蛛的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

execute unless block ~1 ~ ~ air run return 100
execute unless block ~-1 ~ ~ air run return 100
execute unless block ~ ~ ~1 air run return 100
execute unless block ~ ~ ~-1 air run return 100
return fail