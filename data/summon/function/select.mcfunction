function summon:reset
$execute unless items entity @s enderchest.$(head) player_head run return run data remove storage jk2:data root.summon.head
playsound block.piston.extend ambient @s ~ ~ ~ 1 2

$item replace entity @s enderchest.18 from entity @s enderchest.$(head)

item replace entity @s enderchest.11 with glowstone_dust[custom_name='{"text": "+1", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.12 with glowstone_dust[custom_name='{"text": "+5", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.13 with glowstone_dust[custom_name='{"text": "+10", "color": "green", "bold": true, "italic": false}']
item replace entity @s enderchest.20 with gunpowder[custom_name='{"text": "-1", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.21 with gunpowder[custom_name='{"text": "-5", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.22 with gunpowder[custom_name='{"text": "-10", "color": "red", "bold": true, "italic": false}']
item replace entity @s enderchest.24 with red_dye[custom_name='{"text": "刷新怪物", "color": "aqua", "bold": true, "italic": false}',lore=['[{"text": "消耗 10 電力", "color": "gray", "italic": false}]']]
item replace entity @s enderchest.26 with green_dye[custom_name='{"text": "召喚怪物", "color": "gold", "bold": true, "italic": false}']

data remove storage jk2:data root.summon.head