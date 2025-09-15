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

tag @e[type=armor_stand, tag=poison_choose] add poison
tag @e[type=armor_stand, tag=poison_choose] remove poison_choose
scoreboard players add 毒氣 info_survivor 180