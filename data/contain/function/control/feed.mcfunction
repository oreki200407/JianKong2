###################################################
# 餵食怪物
# 
# Name   : feed.mcfunction
# Path   : contain:control/
# As     : 餵食互動實體，tag=contain_feed
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players add @e[tag=contain] contain_food 1

function contain:update_text/food