###################################################
# 召喚陷阱
# 
# Name   : trap.mcfunction
# Path   : monitor:observe/player/summon/
# As     : 使用陷阱的玩家
# At     : 看到的第一個非空氣方塊的頭上
# Loop   : 否
# Author : Alex_Cai
###################################################

execute store result score @s trap run data get entity @s SelectedItem.components."minecraft:custom_model_data"
item modify entity @s weapon.mainhand { "function": "set_count", "count": -1, "add": true }
execute at @s run playsound block.smithing_table.use ambient @s ~ ~ ~

#1
execute if score @s trap matches 1 run return run summon item ~ ~ ~ {Item:{id:"red_concrete",count:1},PortalCooldown:40,Invulnerable:1b,PickupDelay:32767,Age:-32768,Tags:["grenade"]}

#2
execute if score @s trap matches 2 run return run summon potion ~ ~ ~ {Item: {id: "lingering_potion", components: {"custom_name": '{"text": "燃燒瓶", "color": "aqua", "bold": true, "italic": false}', "potion_contents": {"custom_color": 4144959}, "max_stack_size": 64, "hide_additional_tooltip": {}, "custom_data": {"gadgets": "molotov_cocktail"}}}}

#3
execute if score @s trap matches 3 run return run function gadgets:bear_trap/summon

#4
summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}