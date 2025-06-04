###################################################
# 火焰標記點燃實體
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火槍噴出的火
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#不能傷害旁觀者
execute if entity @s[gamemode=spectator] run return fail

#TODO: 或能用自訂附魔的post_attack
#玩家
execute at @s[type=player] run return run summon small_fireball ~ ~2.1 ~ {Motion: [0.0, -10.0, 0.0]}
#不是玩家
data modify entity @s Fire set value 20