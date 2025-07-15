###################################################
# 火焰標記點燃實體
# 
# Name   : ignite.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火槍噴出的火
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

scoreboard players operation #flame_hit uuid0_match = @s uuid0_match
execute as @e[team=monitor, tag=monster, distance=..3] run function gun:flamethrower/flame/range_ignite
kill