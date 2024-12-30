###################################################
# 雪球落地後召喚鞭炮
# 
# Name   : summon.mcfunction
# Path   : gadgets:grenade/
# As     : 騎著雪球的標記
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

summon item ~ ~0.2 ~ {Item:{id:"red_concrete",count:1},PortalCooldown:40,Invulnerable:1b,PickupDelay:32767,Age:-32768,Tags:["grenade"]}
kill