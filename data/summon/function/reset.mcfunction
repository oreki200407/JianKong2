###################################################
# 重設終界箱
# 
# Name   : reset.mcfunction
# Path   : summon:
# As     : 重設終界箱的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

item replace entity @s enderchest.0 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.8 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.9 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.10 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.11 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.12 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.13 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.14 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.15 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.16 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.17 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.18 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.19 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.20 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.21 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.22 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.23 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.24 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.25 with white_stained_glass_pane[custom_name='""']
item replace entity @s enderchest.26 with white_stained_glass_pane[custom_name='""']

function summon:head/reset

execute unless score @s summon_monster matches 1..7 run return fail
execute store result storage jk2:data root.summon.head int 1 run scoreboard players get @s summon_monster
function summon:head/set with storage jk2:data root.summon
function summon:operation/reset