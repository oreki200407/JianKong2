###################################################
# 降低室溫
# 
# Name   : subtract_temperature.mcfunction
# Path   : contain:control/
# As     : 降低室溫互動實體，tag=contain_subtract_temperature
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players remove #room contain_temperature 1
execute if score #room contain_temperature matches ..9 run scoreboard players set #room contain_temperature 10
data merge entity @e[type=text_display,tag=contain_temperature,limit=1] {text:[{"score":{"name":"#room","objective":"contain_temperature"},color:gold,bold:1b}]}