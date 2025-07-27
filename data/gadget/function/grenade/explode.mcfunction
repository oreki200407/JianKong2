###################################################
# 鞭炮經過一段時間後爆炸
# 
# Name   : explode.mcfunction
# Path   : gadget:grenade/
# As     : 手榴彈
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

execute unless entity @s[nbt={PortalCooldown: 0}] run return run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.1 4 force

summon creeper ~ ~ ~ {DeathLootTable:"summon:empty",Tags:["grenade_explode"],CustomName:{"text":"鞭炮"},ignited:1b,Fuse:0,Invulnerable:1b,Silent:1b}
kill