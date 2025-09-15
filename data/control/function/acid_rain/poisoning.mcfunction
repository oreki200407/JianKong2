###################################################
# 正在受到酸雨傷害
# 
# Name   : poisoning.mcfunction
# Path   : control:acid_rain/
# As     : 受到酸雨傷害的玩家
# At     : As ~ ~1 ~
# Loop   : 是
# Author : oreki20
###################################################

title @s actionbar {text: "你正在被酸雨侵蝕", color: "red", bold: true}
effect give @s poison 1 4