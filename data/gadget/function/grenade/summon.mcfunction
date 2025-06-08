###################################################
# 雪球落地後召喚鞭炮
# 
# Name   : summon.mcfunction
# Path   : gadget:grenade/
# As     : 騎著雪球的標記
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

summon item ~ ~ ~ {PortalCooldown:40,Item:{id:"snowball",count:1,components:{"custom_model_data":{strings:["bomb"]}}},Invulnerable:1b,PickupDelay:32767,Age:-32768,Tags:["grenade"]}
kill @s[type=marker]