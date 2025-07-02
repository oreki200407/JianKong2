###################################################
# 使用殭屍的第二個技能
# 
# Name   : use_1.mcfunction
# Path   : morph:zombie/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

playsound entity.zombie.infect ambient @s
#召喚增援
summon zombie ~ ~ ~ {attributes:[{base:15,id:"follow_range"},{base:0.3d,id:"movement_speed"},{base:2,id:"attack_damage"}],CanPickUpLoot:0b,DeathLootTable:"summon:empty",PersistenceRequired:1b,Tags:["monster"],Team:"monitor"}