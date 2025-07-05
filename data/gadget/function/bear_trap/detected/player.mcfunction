###################################################
# 捕獸夾抓到玩家時執行的函數
# 
# Name   : player.mcfunction
# Path   : gadget:bear_trap/detected/
# As     : 捕獸夾抓到的玩家
# At     : 捕獸夾方塊展示實體 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#如果是玩家被抓到
attribute @s jump_strength modifier add jk2:bear_trap -0.95 add_multiplied_base
scoreboard players set @s jump_break 0
tellraw @s ["◎ 你踩到了", {text: "捕獸夾", color: "gold"}, ", 請反覆跳躍掙脫"]


summon marker ~ ~ ~ {Tags:["baer_trap_marker","baer_trap_new_marker"]}

execute store result score @e[type=marker,tag=baer_trap_new_marker] bear_trap run scoreboard players add #marker_number bear_trap 1
scoreboard players operation @s bear_trap = #marker_number bear_trap

tag @e remove baer_trap_new_marker