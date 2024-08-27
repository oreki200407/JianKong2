###################################################
# 召喚雷電
# 
# Name   : summon.mcfunction
# Path   : monster:boss/creeper/status/lightning/
# As     : 苦力怕boss
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

$execute rotated $(rotate) 0 run summon lightning_bolt ^ ^ ^$(range) {Team: "monitor"}
particle explosion ~ ~ ~ 1 1 1 0 5 force
execute as @a[team=survivor, gamemode=adventure, distance=..7] run damage @s 2.5 mob_attack by c2ee9e2-b-0-5-5