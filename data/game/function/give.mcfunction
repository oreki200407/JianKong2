###################################################
# 給予物品
# 
# Name   : give.mcfunction
# Path   : game:
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

give @s golden_axe[custom_name='{"text": "噴火槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gun": "flamethrower"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "衝鋒槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "smg"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "手槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "pistol"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text": "散彈槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'],custom_data={"gun": "shotgun"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}, !attribute_modifiers]

give @s iron_axe[custom_name='{"text": "錘子", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "按住", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gadget": "hammer"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, max_damage=10, !attribute_modifiers]

give @s iron_axe[custom_name='{"text": "滅火器", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gadget": "extinguisher"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, max_damage=20, !attribute_modifiers]

give @s netherite_ingot[custom_name='{"text": "磨刀石", "color": "aqua", "bold": true, "italic": false}', custom_data={gadget: "whetstone"}, damage=0, max_damage=50, max_stack_size=1]

give @s tripwire_hook[custom_name='{"text": "開鎖器", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gadget": "unlock"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, max_damage=10]

#盔甲不能使用!attribute_modifiers https://bugs.mojang.com/browse/MC-271826
give @s iron_helmet[custom_name='{"text": "防毒面具", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "戴上後可以防毒", "color": "gray", "italic": false}]', '[{"text": "但會消耗耐久度", "color": "gray", "italic": false}]'], custom_data={"gadget": "mask"}, max_damage=2400, attribute_modifiers={modifiers: [{id: "jk2:mask", slot: "head", amount: 0, operation: "add_value", type: "generic.armor"}], show_in_tooltip: false}]

#燃燒瓶
give @s lingering_potion[custom_name='{"text": "燃燒瓶", "color": "aqua", "bold": true, "italic": false}', potion_contents={"custom_color": 4144959}, max_stack_size=64, hide_additional_tooltip={}, custom_data={"gadget": "molotov_cocktail"}]

#抗音爆攻擊裝備
give @s leather_chestplate[enchantments={"game:sonic_boom_protection": 1}]