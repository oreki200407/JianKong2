###################################################
# 召喚怪物成功
# 
# Name   : monster_scueess.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 召喚的怪物(盔甲座)
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

item replace entity @s armor.chest from entity @a[tag=trap_user,limit=1] weapon
function summon:monster
kill