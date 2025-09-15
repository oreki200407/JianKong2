###################################################
# 禁止奔跑結束
# 
# Name   : end.mcfunction
# Path   : control:sprint/
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tellraw @a ["◎ 現在已經可以", {"text": "奔跑", "color":"gold"}]
scoreboard players reset 禁止奔跑 info_survivor