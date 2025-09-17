###################################################
# 凍結怪物
# 
# Name   : root.mcfunction
# Path   : contain:control/freeze/
# As     : 凍結互動實體，tag=contain_freeze
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

execute if entity @s[tag=freeze] run return run function contain:control/freeze/unfreeze

data merge entity @e[type=text_display,limit=1,tag=contain_freeze_text] {text:{color:"gold",text:"解凍生物",bold:1b}}
tag @s add freeze
tellraw @a[team=monitor] ["◎ 生物已被",{text:"凍結","color":"gold"}, ", 凍結期間不會生產材料"]