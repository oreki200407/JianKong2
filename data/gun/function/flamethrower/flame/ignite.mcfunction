###################################################
# 火焰標記點燃實體
# 
# Name   : flying.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 噴火器噴出的火
# At     : As
# Loop   : 否
# Author : Alex Cai
###################################################

#不能傷害非監控者的玩家
execute if entity @s[type=player, team=!monitor] run return fail
#不能傷害旁觀者
execute if entity @s[gamemode=spectator] run return fail

#TODO: 或能用自訂附魔的post_attack
#玩家
execute at @s[type=player] run return run summon small_fireball ~ ~2.1 ~ {Motion: [0.0, -10.0, 0.0]}
#不是玩家
return run data modify entity @s Fire set value 20