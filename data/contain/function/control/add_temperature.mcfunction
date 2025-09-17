###################################################
# 提升室溫
# 
# Name   : add_temperature.mcfunction
# Path   : contain:control/
# As     : 提升室溫互動實體，tag=contain_add_temperature
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players add #room contain_temperature 1
execute if score #room contain_temperature matches 31.. run scoreboard players set #room contain_temperature 30
data merge entity @e[type=text_display,tag=contain_temperature,limit=1] {text:[{"score":{"name":"#room","objective":"contain_temperature"}, color:gold, bold:1b}]}