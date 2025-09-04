###################################################
# 音爆飛行中
# 
# Name   : sonic_boom.mcfunction
# Path   : morph:warden/skill/1/
# As     : 召喚出的音爆
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

tp @s ^ ^ ^.8
particle sonic_boom
execute if entity @a[team=survivor, distance=..2] run function morph:warden/skill/1/damage

scoreboard players add @s morph_skill_1 1
kill @s[scores={morph_skill_1=20}]