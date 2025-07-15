###################################################
# 火焰標記點燃實體
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火槍噴出的火
# At     : At
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score #flame_hit uuid0_match run data get entity @s data.owner
kill

execute as @e[team=monitor, tag=monster, distance=..3] run function gun:flamethrower/flame/range_ignite