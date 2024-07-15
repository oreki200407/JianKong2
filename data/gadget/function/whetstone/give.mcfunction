###################################################
# 給予磨刀石
# 
# Name   : give.mcfunction
# Path   : gadget:wheststone/
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s netherite_ingot[max_damage=50, max_stack_size=1, custom_name='{"text": "磨刀石", "color": "aqua", "bold": true, "italic": false}', food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, custom_data={gadget: "whetstone"}]