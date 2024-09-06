###################################################
# 終界使者的第二個技能 放置方塊
# 
# Name   : shulker.mcfunction
# Path   : morph:enderman/skill/2/
# As     : 召喚出的界伏蚌
# At     : 使用技能的玩家 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#NBT
data modify entity @s NoAI set value true
team join monitor @s

#利用草方塊展示實體的UUID建立兩個實體的連結
scoreboard players operation @s uuid0 = #grass_block_display uuid0