###################################################
# 被捕獸夾抓到的怪物，會被困住10秒
# 
# Name   : mob.mcfunction
# Path   : gadget:trap/trapped/
# As     : 被捕獸夾抓到的怪物
# At     : 世界重生點
# Loop   : 是
# Author : Alex Cai
###################################################

scoreboard players add @s trap 1

#會被困住10秒
execute if score @s trap matches 200 run function gadget:trap/trapped/release