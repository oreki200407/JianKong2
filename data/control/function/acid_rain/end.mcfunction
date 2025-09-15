###################################################
# 釋放酸雨結束
# 
# Name   : end.mcfunction
# Path   : control:acid_rain/
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tellraw @a ["◎ 酸雨已", {"text": "消失", "color":"gold"}]
scoreboard players reset 酸雨 info_survivor
weather clear