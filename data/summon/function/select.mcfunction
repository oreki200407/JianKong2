function summon:reset
$execute unless items entity @s enderchest.$(head) player_head run return run data remove storage jk2:data root.summon.head

kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}},distance=..1.5]
clear @s player_head
playsound block.piston.extend ambient @s ~ ~ ~ 1 2


$item replace entity @s enderchest.18 from entity @s enderchest.$(head)

item replace entity @s enderchest.11 with glowstone_dust
item replace entity @s enderchest.12 with glowstone_dust
item replace entity @s enderchest.13 with glowstone_dust
item replace entity @s enderchest.20 with gunpowder
item replace entity @s enderchest.21 with gunpowder
item replace entity @s enderchest.22 with gunpowder
item replace entity @s enderchest.24 with red_dye
item replace entity @s enderchest.26 with green_dye

data remove storage jk2:data root.summon.head