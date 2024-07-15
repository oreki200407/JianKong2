###################################################
# 給予錘子
# 
# Name   : give.mcfunction
# Path   : gadget:hammer/
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

give @s iron_axe[custom_name='{"text": "錘子", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "按住", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gadget": "hammer"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, max_damage=10, !attribute_modifiers]