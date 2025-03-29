###################################################
# 復活倒地的玩家並刪除自己
# 
# Name   : revive.mcfunction
# Path   : game/death/tomb
# As     : 代表倒地玩家的展示實體
# At     : 蹲在展示實體附近的玩家
# Loop   : 是
# Author : Alex_Cai
###################################################

#透過UUID[0]找到當初那名玩家

#儲存的UUID
execute store result score #saved uuid0 run data get entity @s data.player_uuid0

#找到跟頭顱裡UUID相同的玩家
execute at @s as @a[team=survivor] if score @s uuid0 = #saved uuid0 run function game:death/survivor/save/saved

#刪除展示實體
kill