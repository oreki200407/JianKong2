###################################################
# 火焰標記飛行中
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火器噴出的火
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#飛行路徑必須是空氣或打開的木門
execute unless block ~ ~ ~ #air unless block ~ ~ ~ #wooden_doors[open=true] run return run kill
scoreboard players add @s front_distance 1
execute if score @s front_distance matches 15 run return run kill
execute store success score #flame front_distance align xyz as @e[type=#gun:entity, dx=0, dy=0, dz=0 ,team=monitor] run function gun:flamethrower/flame/ignite
execute if score #flame front_distance matches 1 run return run function gun:flamethrower/flame/clear

#正常飛行
particle flame ~ ~-.3 ~ .1 .1 .1 0 1 force @a
tp @s ^ ^ ^.7