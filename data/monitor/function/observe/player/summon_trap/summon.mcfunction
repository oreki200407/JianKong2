###################################################
# 召喚陷阱
# 
# Name   : summon.mcfunction
# Path   : monitor:observe/player/summon_trap/
# As     : 使用陷阱的玩家
# At     : 看到的第一個非空氣方塊的頭上
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score @s camera_trap run data get entity @s SelectedItem.components."minecraft:custom_model_data"
clear @s purple_dye 1

#1
execute if score @s camera_trap matches 1 run return run summon snowball

#2
execute if score @s camera_trap matches 2 run return run summon potion ~ ~ ~ {Item: {id: "lingering_potion", components: {"custom_name": '{"text": "燃燒瓶", "color": "aqua", "bold": true, "italic": false}', "potion_contents": {"custom_color": 4144959}, "max_stack_size": 64, "hide_additional_tooltip": {}, "custom_data": {"gadget": "molotov_cocktail"}}}}

#不是1或2
function gadget:trap/summon