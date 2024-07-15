###################################################
# 給予物品
# 
# Name   : give.mcfunction
# Path   : gadget:
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

give @s diamond_axe[custom_name='{"text": "噴火槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gun": "flamethrower"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "衝鋒槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "smg"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "手槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "pistol"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "散彈槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "shotgun"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s iron_axe[custom_name='{"text": "錘子", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "按住", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gadget": "hammer"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, max_damage=10, !attribute_modifiers]

give @s netherite_ingot[custom_name='{"text": "磨刀石", "color": "aqua", "bold": true, "italic": false}', custom_data={gadget: "whetstone"}, damage=0, max_damage=50, max_stack_size=1]