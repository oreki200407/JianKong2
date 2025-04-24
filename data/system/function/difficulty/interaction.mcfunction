###################################################
# 點擊更改難易度
# 
# Name   : interaction.mcfunction
# Path   : system:difficulty/
# As     : 互動實體們
# At     : 世界重生點
# Loop   : 是
# Author : oreki20, Alex_Cai
###################################################

execute if entity @s[tag=setting_easy] on target at @s run function system:difficulty/root {"difficulty": "easy"}
execute if entity @s[tag=setting_normal] on target at @s run function system:difficulty/root {"difficulty": "normal"}
execute if entity @s[tag=setting_hard] on target at @s run function system:difficulty/root {"difficulty": "hard"}