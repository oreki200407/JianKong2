###################################################
# 正在受到毒氣傷害
# 
# Name   : warning.mcfunction
# Path   : control:poison/
# As     : 暴露於毒氣、沒有防毒面具的玩家
# At     : 世界重生點
# Loop   : 是
# Author : oreki20
###################################################

title @s actionbar {text: "你正處於毒氣的區域內", color: "red", bold: true}
effect give @s poison 1 4