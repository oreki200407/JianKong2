###################################################
# 範圍內實體著火
# 
# Name   : range_ignite.mcfunction
# Path   : gun:flamethrower/flame/
# As     : 應著火的實體
# At     : 噴火槍噴出的火
# Loop   : 否
# Author : Alex_Cai
###################################################

#不能傷害旁觀者
execute if entity @s[gamemode=spectator] run return fail

#4秒的灼傷
scoreboard players set @s flamethrower 2
scoreboard players operation @s flamethrower_attacker_uuid0 = #flame_hit uuid0_match

#TODO: 或能用自訂附魔的post_attack

#玩家
execute at @s[type=player] run return run summon small_fireball ~ ~2.1 ~ {Motion: [0.0, -10.0, 0.0]}
#不是玩家
data modify entity @s Fire set value 40