###################################################
# 鞭炮經過一段時間後爆炸
# 
# Name   : explode.mcfunction
# Path   : gadgets:grenade/
# As     : 手榴彈
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

summon creeper ~ ~ ~ {DeathLootTable:"game:empty",Tags:["grenade_explode"],CustomName:'{"text":"鞭炮"}',ignited:1b,ExplosionRadius:3,Fuse:0,Invulnerable:1b,Silent:1b}
kill