###################################################
# 遊戲進行中的tick
# 
# Name   : start.mcfunction
# Path   : tick:
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : oreki20, Alex_Cai
###################################################

execute if score 倒數 system matches 0..3 run function game:teleport

#死亡展示實體
execute as @a[team=survivor, gamemode=adventure, predicate=game:sneak] at @s if entity @e[type=item_display, tag=tomb, distance=..1.5] run function game:death/survivor/save/saving
scoreboard players reset @a[team=survivor, gamemode=adventure, predicate=!game:sneak, scores={revive_time=1..}] revive_time
execute as @a[team=survivor, gamemode=spectator, tag=fall_down] at @s run function game:death/survivor/die/dying

#-----------------------道具-----------------------
#經驗球
kill @e[tag=!xp,type=experience_orb]
execute as @e[type=item] if items entity @s contents slime_ball[item_name="經驗球"] at @s run function monster:xp
execute as @a[team=survivor] run function game:xp

#電箱
execute as @a[team=survivor] at @s run function box:use/root
execute as @a[tag=fixing_box] run function box:fix/fixing

#升級
execute as @a[team=survivor] at @s run function upgrade:root

function tick:both

#-----------------------監控者-----------------------
#使用監視器中
execute as @a[tag=using_camera] run function monitor:observe/player/watching
#監視器
execute as @e[type=area_effect_cloud, tag=camera] run function monitor:observe/camera/tick
scoreboard players remove @a[scores={trap_cooldown=1..}] trap_cooldown 1
#拍攝
#scoreboard players remove @a[scores={photo_cooldown=1..}] photo_cooldown 1

#人體變形
execute as @a[team=monitor] at @s unless score @s morph matches 1.. if entity @e[type=marker,tag=morph_machine,distance=..0.3] run function morph:player/start/root
execute as @a[scores={morph=1..}] run function morph:player/tick with entity @s equipment.head.components."minecraft:custom_data"
#清除所有失去騎乘者的坐騎蜘蛛
execute as @e[type=spider, tag=spider_vehicle] unless predicate {condition: "entity_properties", entity: "this", predicate: {passenger: {}}} run kill
#清除所有失去界伏蚌的草方塊展示實體
execute as @e[type=block_display, tag=grass_block] run function morph:enderman/block_display
#變形的標記
execute as @e[type=marker, tag=morph_product] run function morph:marker

#收容
execute as @e[type=interaction,tag=contain_control] run function contain:control/root
execute as @e[tag=contain] if score @s contain_health matches ..0 run function contain:death
execute unless entity @e[tag=contain_creeper] as @e[tag=contain_creeper_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[tag=contain_zombie] as @e[tag=contain_zombie_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[tag=contain_villager] as @e[tag=contain_villager_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[tag=contain_spider] as @e[tag=contain_spider_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[tag=contain_skeleton] as @e[tag=contain_skeleton_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute at @e[tag=contain_marker] as @a[team=monitor,distance=..0.2] run function contain:escape/player
execute as @e[tag=contain_escape] at @s if entity @e[tag=contain_marker,distance=..0.3] run function contain:escape/check

#機關
execute as @e[tag=poison,limit=1] run function control:poison/poisoning with entity @s data