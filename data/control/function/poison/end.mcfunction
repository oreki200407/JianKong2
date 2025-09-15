###################################################
# 釋放毒氣結束
# 
# Name   : end.mcfunction
# Path   : control:poison/
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tellraw @a ["◎ 毒氣已", {"text": "消失", "color":"gold"}]
tag @e[type=armor_stand, tag=poison] remove poison
scoreboard players reset 毒氣 info_survivor
scoreboard players reset 毒氣位置 info_survivor