###################################################
# 重設終界箱
# 
# Name   : reset.mcfunction
# Path   : summon:
# As     : 重設終界箱的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

item replace entity @s enderchest.1 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.2 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.3 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.4 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.5 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.6 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']
item replace entity @s enderchest.7 with white_stained_glass_pane[custom_name='{"text":"怪物尚未登場","color":"red","italic":false}']

item replace entity @s enderchest.1 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=1},limit=1] armor.chest
item replace entity @s enderchest.2 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=2},limit=1] armor.chest
item replace entity @s enderchest.3 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=3},limit=1] armor.chest
item replace entity @s enderchest.4 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=4},limit=1] armor.chest
item replace entity @s enderchest.5 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=5},limit=1] armor.chest
item replace entity @s enderchest.6 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=6},limit=1] armor.chest
item replace entity @s enderchest.7 from entity @e[type=armor_stand,tag=summon_picked,scores={summon_monster=7},limit=1] armor.chest