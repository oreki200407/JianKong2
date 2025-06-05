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

#中途加入
execute as @a[tag=!start] run function game:spectate

#死亡展示實體
execute as @a[team=survivor, gamemode=adventure, predicate=game:sneak] at @s if entity @e[type=item_display, tag=tomb, distance=..1.5] run function game:death/survivor/save/saving
scoreboard players reset @a[team=survivor, gamemode=adventure, predicate=!game:sneak, scores={revive_time=1..}] revive_time
execute as @a[team=survivor, gamemode=spectator, tag=fall_down] at @s run function game:death/survivor/die/dying

#-----------------------道具-----------------------
#經驗球
kill @e[tag=!xp,type=experience_orb]
execute as @e[type=item] if items entity @s contents slime_ball[item_name="經驗球"] at @s run function monster:xp
execute as @a[team=survivor] run function game:xp

#治療
scoreboard players remove @a[scores={medical_cooldown=1..}] medical_cooldown 1

#鞭炮
execute as @e[type=snowball, tag=!checked] run function gadget:grenade/snowball
execute as @e[type=marker, tag=grenade_marker, predicate=!game:riding] at @s run function gadget:grenade/summon
execute as @e[type=item, tag=grenade] if predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 40}} at @s run function gadget:grenade/explode

#燃燒瓶
execute as @e[type=lingering_potion, tag=!checked] run function gadget:molotov_cocktail/potion
execute as @e[type=marker, tag=molotov_cocktail_marker, predicate=!game:riding] at @s run function gadget:molotov_cocktail/set_fire

#捕獸夾
execute as @e[type=block_display, tag=bear_trap] run function gadget:bear_trap/trap_working
#被捕獸夾抓到的生物
execute as @e[tag=trapped] run function gadget:bear_trap/trapped/root

#開鎖器
execute as @a[tag=using_unlock] run function gadget:unlock/unlocking

#電箱
execute as @a[team=survivor] at @s run function box:use/root
execute as @a[tag=fixing_box] run function box:fix/fixing

#防毒面具
execute as @a if items entity @s armor.head iron_helmet[item_name="防毒面具"] run function gadget:mask/wearing

#遠程武器
execute as @e[type=marker, tag=flame] at @s run function gun:flamethrower/flame/flying
execute as @a[team=survivor, scores={reload=1}] run function gun:smg/reloading
execute as @a[team=survivor, scores={reload=2}] run function gun:pistol/reloading
execute as @a[team=survivor, scores={reload=3}] run function gun:shotgun/reloading
scoreboard players remove @a[scores={gun_cooldown=1..}] gun_cooldown 1

#升級
execute as @a[team=survivor] at @s run function upgrade:root

#-----------------------監控者-----------------------
#監控者與終界箱
execute as @a[team=monitor] at @s run function summon:root
scoreboard players remove @e[type=armor_stand,tag=summon_pick,scores={summon_cooldown=1..}] summon_cooldown 1

#使用監視器中
execute as @a[tag=using_camera] run function monitor:observe/player/watching
#監視器
execute as @e[type=area_effect_cloud, tag=camera] run function monitor:observe/camera/tick
scoreboard players remove @a[scores={trap_cooldown=1..}] trap_cooldown 1
#拍攝
scoreboard players remove @a[scores={photo_cooldown=1..}] photo_cooldown 1

#發電
execute as @a[team=monitor] run function power:root
execute as @e[type=area_effect_cloud, tag=power1_time] if predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 40}} at @s run setblock ~ ~ ~ command_block[facing=down]{Command:"execute as @e[tag=power1] at @s run function power:success"}
execute as @e[type=marker,tag=power_auto] at @s if predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 40}} at @s run function power:success

#人體變形
execute as @a[team=monitor] at @s if entity @e[type=marker,tag=morph_machine,distance=..0.3] run function morph:player/start/root
execute as @a[scores={morph=1..}] run function morph:player/tick with entity @s equipment.head.components."minecraft:custom_data"
#清除所有失去騎乘者的坐騎蜘蛛
execute as @e[type=spider, tag=spider_vehicle] unless predicate {condition: "entity_properties", entity: "this", predicate: {passenger: {}}} run kill
#清除所有失去界伏蚌的草方塊展示實體
execute as @e[type=block_display, tag=grass_block] run function morph:enderman/block_display
#變形的標記
execute as @e[type=marker, tag=morph_product] run function morph:marker