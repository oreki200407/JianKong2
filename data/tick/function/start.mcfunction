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

#殺怪數
execute as @a[team=survivor] unless score @s kill_score = @s kill run scoreboard players operation @s kill_score = @s kill

#死亡
execute as @e[type=armor_stand, tag=tomb] run function game:death/tomb/stand
execute as @a[team=survivor, gamemode=spectator, tag=fall_down] at @s run function game:death/survivor/die/dying
#救援
execute as @a[team=survivor, gamemode=adventure, predicate=game:flag/sneak] at @s if entity @e[type=item_display, tag=tomb, distance=..1.5] run function game:death/survivor/save/saving
scoreboard players reset @a[team=survivor, predicate=!game:flag/sneak, scores={revive_time=1..}] revive_time

execute as @a[team=monitor,tag=monitor_death,scores={health=20..}] run function game:death/monitor_effect

function monster:effect
execute as @e[tag=box_transfer] at @s run function monster:effect_transfer

#-----------------------道具-----------------------
#經驗球
kill @e[tag=!xp,type=experience_orb]
execute as @e[type=item] if items entity @s contents slime_ball[item_name="經驗球"] at @s run function monster:xp
execute as @a[team=survivor] run function game:xp

#骨折
execute as @a[scores={fracture=1..}, team=survivor] at @s run function gadget:medical/fracture/damage

#電箱
execute as @a[team=!spec] at @s run function box:use/root
execute as @a[tag=fixing_box] run function box:fix/fixing

#升級
execute as @a[team=survivor] at @s run function upgrade:root

function tick:both

#-----------------------監控者-----------------------
clear @a[team=monitor] #game:loot
xp set @a[team=monitor] 0 points

#陷阱
scoreboard players remove @a[scores={trap_cooldown=1..}] trap_cooldown 1
execute unless score #trap trap_cooldown matches 15 run function monitor:observe/player/summon/cooldown

#人體變形
execute as @a[team=monitor] at @s unless score @s morph matches 1.. if entity @e[type=marker,tag=morph_machine,distance=..0.55] run function morph:player/start/root
execute as @a[scores={morph=1..}] at @s run function morph:player/tick with entity @s equipment.head.components."minecraft:custom_data"
#清除所有失去騎乘者的坐騎蜘蛛
kill @e[type=spider, tag=spider_vehicle, predicate=!game:being_ride]
#清除所有失去界伏蚌的草方塊展示實體
kill @e[type=block_display, tag=morph_grass_block, predicate=!game:riding]
#苦力怕TNT
execute as @e[type=tnt, tag=morph_tnt, nbt={fuse: 1s}] at @s run function morph:creeper/skill/2/tnt_explode
#變形的標記
execute as @e[type=marker, tag=morph_product] run function morph:marker

#收容
execute as @e[tag=contain,scores={contain_health=..0}] at @s run function contain:death
execute unless entity @e[type=creeper, tag=contain_creeper] as @e[type=marker, tag=contain_creeper_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[type=zombie, tag=contain_zombie] as @e[type=marker, tag=contain_zombie_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[tag=contain_villager] as @e[type=marker, tag=contain_villager_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[type=cave_spider, tag=contain_spider] as @e[type=marker, tag=contain_spider_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute unless entity @e[type=skeleton, tag=contain_skeleton] as @e[type=marker, tag=contain_skeleton_marker] at @s unless block ~-2 ~-1 ~ oak_wall_sign run function contain:death
execute at @e[type=marker, tag=contain_marker] run function contain:escape/contain_marker

#機關
execute as @e[tag=poison,limit=1] run function control:poison/poisoning with entity @s data
execute if score 酸雨 info_survivor matches 1.. as @a[team=survivor] at @s positioned ~ ~1 ~ if predicate control:acid_rain run function control:acid_rain/poisoning
execute if score 禁止奔跑 info_survivor matches 1.. as @a[team=survivor,predicate=game:flag/sprint] run function control:sprint/poisoning