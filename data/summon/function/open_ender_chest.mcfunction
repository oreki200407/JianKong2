###################################################
# 開啟終界箱
# 
# Name   : open_ender_chest.mcfunction
# Path   : summon:
# As     : 開啟終界箱的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai, oreki20
###################################################

function summon:reset
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
scoreboard players reset @s open_ender_chest