###################################################
# 正在裝彈中
# 
# Name   : manual.mcfunction
# Path   : gun:
# As     : 副手拿槍的玩家
# At     : As
# Loop   : 是
# Author : oreki20
###################################################

execute if score @s reload matches 1 run function gun:smg/reloading
execute if score @s reload matches 2 run function gun:pistol/reloading
execute if score @s reload matches 3 run function gun:shotgun/reloading