###################################################
# 捕獸夾抓到玩家時執行的函數
# 
# Name   : player.mcfunction
# Path   : gadget:trap/detected/
# As     : 捕獸夾抓到的玩家
# At     : 捕獸夾方塊展示實體 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果是玩家被抓到
attribute @s generic.jump_strength modifier add jk2:trap -0.95 add_multiplied_base
scoreboard players set @s jump 0
tellraw @s ["","◎ 你踩到了", {"text": "捕獸夾","color":"gold"},", 請反覆跳躍掙脫"]