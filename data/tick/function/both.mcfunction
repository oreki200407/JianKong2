###################################################
# 遊戲進行中&準備中的tick
# 
# Name   : both.mcfunction
# Path   : tick:
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : oreki20, Alex_Cai
###################################################

#中途加入
execute as @a[tag=!start] run function game:spectate

#-----------------------道具-----------------------
#治療
scoreboard players remove @a[scores={medical_cooldown=1..}] medical_cooldown 1

#鞭炮
execute as @e[type=snowball, tag=!checked] run function gadget:grenade/snowball
execute as @e[type=marker, tag=grenade_marker, predicate=!game:riding] at @s run function gadget:grenade/summon
execute as @e[type=item, tag=grenade, nbt={PortalCooldown: 0}] at @s run function gadget:grenade/explode

#燃燒瓶
execute as @e[type=lingering_potion, tag=!checked] run function gadget:molotov_cocktail/potion
execute as @e[type=marker, tag=molotov_cocktail_marker, predicate=!game:riding] at @s run function gadget:molotov_cocktail/set_fire

#黑洞炸彈
execute as @e[type=area_effect_cloud,tag=black_hole] at @s run function gadget:black_hole/use

#捕獸夾
execute as @e[type=armor_stand, tag=bear_trap_point, predicate=game:flag/on_ground] at @s run function gadget:bear_trap/summon
execute as @e[type=item_display, tag=bear_trap] run function gadget:bear_trap/trap_working
#被捕獸夾抓到的生物
execute as @e[tag=trapped] run function gadget:bear_trap/trapped/root

#開鎖器
execute as @a[tag=using_unlock] run function gadget:unlock/unlocking

#錘子
execute as @a[team=survivor] if items entity @s weapon tripwire_hook[item_name="錘子"] run scoreboard players add @s hammer_hold 1

#防毒面具
execute as @a[team=survivor,gamemode=adventure] if items entity @s armor.head carved_pumpkin[item_name="防毒面具"] run function gadget:mask/wearing

#遠程武器
execute as @e[type=marker, tag=flame] at @s run function gun:flamethrower/flame/flying
execute as @a[team=survivor, scores={reload=1..}] run function gun:reloading
execute as @a[team=survivor] at @s if items entity @s weapon.offhand golden_axe run function gun:manual
scoreboard players remove @a[scores={gun_cooldown=1..}] gun_cooldown 1

#-----------------------監控者-----------------------
execute if score 電力 info_monitor matches 301.. run scoreboard players set 電力 info_monitor 300

#使用監視器中
execute as @a[tag=using_camera] unless predicate game:keyboard/no_input run function monitor:observe/player/back/root
scoreboard players remove @a[scores={camera_cooldown=1..}] camera_cooldown 1
#監視器
execute as @e[type=area_effect_cloud, tag=camera] run function monitor:observe/camera/tick
scoreboard players remove @a[scores={trap_cooldown=1..}] trap_cooldown 1
#拍攝
#scoreboard players remove @a[scores={photo_cooldown=1..}] photo_cooldown 1

#終界箱
execute as @a[team=monitor] at @s run function summon:root
scoreboard players remove @e[type=armor_stand,tag=summon_pick,scores={summon_cooldown=1..}] summon_cooldown 1

#發電
execute as @a[team=monitor] run function power:root
execute as @e[type=area_effect_cloud, tag=power1_time, nbt={PortalCooldown: 0}] at @s run function power:progress/1_end
execute as @e[type=marker,tag=power_auto] at @s if predicate {condition: "entity_properties", entity: "this", predicate: {periodic_tick: 40}} at @s run function power:success

#收容
execute as @e[type=interaction,tag=contain_control] at @s if data entity @s interaction run function contain:control/root