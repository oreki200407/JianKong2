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

tag @s add freeze
tellraw @a[team=monitor] ["◎ ",{selector:"@s", color:gold},"生物已被",{text:"凍結","color":"gold"}, ", 凍結期間不會生產材料"]
function contain:update_text/all