###################################################
# 火焰標記點燃實體
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴出的火碰到的實體
# At     : 噴火槍噴出的火
# Loop   : 否
# Author : Alex_Cai
###################################################

#不能傷害旁觀者
execute if entity @s[gamemode=spectator] run return fail

execute store result score #flame_hit uuid0_match run data get entity @s data.owner
execute as @e[team=monitor, tag=monster, distance=..3] run function gun:flamethrower/flame/range_ignite