###################################################
# 解凍怪物
# 
# Name   : unfreeze.mcfunction
# Path   : contain:control/freeze/
# As     : 凍結互動實體，tag=contain_freeze
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tag @s remove freeze
tellraw @a[team=monitor] ["◎ ",{selector:"@s", color:gold},"已",{text:"解凍","color":"gold"}]