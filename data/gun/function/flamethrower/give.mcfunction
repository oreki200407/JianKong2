###################################################
# 給予噴火器
# 
# Name   : give.mcfunction
# Path   : gadget:flamethrower/
# As     : 輸入指令的人
# At     : As
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

give @s diamond_axe[custom_name='{"text": "噴火槍", "color": "aqua", "bold": true, "italic": false}', lore=['[{"text": "點擊", "color": "gray", "italic": false}, {"keybind": "key.use"}, "使用"]'], custom_data={"gun": "flamethrower"}, food={nutrition: 1, saturation: 1, can_always_eat: true, eat_seconds: 999999}, !attribute_modifiers]

give @s golden_axe[custom_name='{"text":"§b§l衝鋒槍"}',lore=['"§7點擊右鍵使用"'],custom_data={"gun": "smg"},food={nutrition:1,saturation:1,can_always_eat:true,eat_seconds:999999}]