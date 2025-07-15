###################################################
# 火焰標記接觸到實體
# 
# Name   : is_touched.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火槍噴出的火
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

execute if entity @e[type=!player, team=monitor, tag=monster, dx=0, dy=0, dz=0] run return 100
execute if entity @a[gamemode=!spectator, team=monitor, tag=monster, dx=0, dy=0, dz=0] run return 100
return fail