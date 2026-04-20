###################################################
# 釋放毒氣開始
# 
# Name   : start.mcfunction
# Path   : control:poison/
# As     : 世界重生點
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

tag @e[tag=poison_choose, type=armor_stand] add poison
tag @e[tag=poison_choose, type=armor_stand] remove poison_choose
scoreboard players add 毒氣 info_survivor 180