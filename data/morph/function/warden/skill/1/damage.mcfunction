###################################################
# 音爆傷害到玩家
# 
# Name   : damage.mcfunction
# Path   : morph:warden/skill/1/
# As     : 召喚出的音爆
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

scoreboard players operation #warden uuid0 = @s uuid0_match
execute as @a[team=monitor] if score @s uuid0 = #warden uuid0 run tag @s add warden_attacker
execute as @a[team=survivor, distance=..2] run damage @s 2.5 sonic_boom by @a[tag=warden_attacker, limit=1]
tag @a[tag=warden_attacker] remove warden_attacker