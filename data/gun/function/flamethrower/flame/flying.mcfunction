###################################################
# 火焰標記飛行中
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火槍噴出的火
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#飛行路徑必須是空氣或打開的木門
execute unless function gun:can_through run return run kill

scoreboard players add @s flamethrower 1
execute if score @s flamethrower matches 15 run return run kill

execute align xyz if function gun:flamethrower/flame/is_touched run function gun:flamethrower/flame/ignite

#正常飛行
particle flame ~ ~-.5 ~ .1 .1 .1 0 1 force @a
tp @s ^ ^ ^.7