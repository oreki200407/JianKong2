###################################################
# 捕獸夾偵測到實體時執行的函數
# 
# Name   : root.mcfunction
# Path   : tutorial:bear_trap/detected/
# As     : 捕獸夾偵測到的實體
# At     : 捕獸夾方塊展示實體 align xyz
# Loop   : 否
# Author : Alex_Cai
###################################################

#被抓到了
tag @s add tutorial_trapped

#禁止移動和跳躍
playsound item.shield.break master @a ~ ~ ~ 1 0
attribute @s jump_strength modifier add jk2:bear_trap -0.95 add_multiplied_base
scoreboard players set @s jump_break 0
scoreboard players set @s bear_trap_release 0
tellraw @s ["◎ 你踩到了", {text: "捕獸夾", color: "gold"}, ", 請反覆點擊", {keybind: "key.jump", color: "gold"}, "來掙脫"]

#召喚標記
execute store result score @s bear_trap positioned ~ ~-.375 ~ summon marker store result score @s bear_trap run function gadget:bear_trap/detected/marker

return 100