###################################################
# 儲存座標
# 
# Name   : player_position.mcfunction
# Path   : morph:warden/distance/
# As     : 附近的求生者
# At     : 變成伏守者的玩家
# Loop   : 是
# Author : Alex_Cai
###################################################

execute store result score #player_x morph run data get entity @s Pos[0] 10
execute store result score #player_y morph run data get entity @s Pos[1] 10
execute store result score #player_z morph run data get entity @s Pos[2] 10