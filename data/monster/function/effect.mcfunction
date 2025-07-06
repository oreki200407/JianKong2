###################################################
# 所有怪物的效果
# 
# Name   : effect.mcfunction
# Path   : monster:
# As     : 世界重生點
# At     : As
# Loop   : 是
# Author : Alex_Cai, oreki20
###################################################

#execute at @e[tag=monster] at @e[distance=..1.5,tag=door] if block ~ ~ ~ #doors[open=false] run 開門
kill @e[type=bat, tag=passengerby, predicate=!game:being_ride]
kill @e[type=arrow,nbt={inGround:1b}]

#怪物看著未受保護的玻璃會裂開
tag @e[type=marker, tag=being_watched] remove being_watched
execute as @e[type=#monster:all, team=monitor] at @s anchored eyes run function monster:break_glass/raycast
scoreboard players reset @e[type=marker, tag=glass_marker, tag=!being_watched, scores={glass_break=1..}] glass_break

#怪物開門
execute as @e[type=marker, tag=door] at @s run function monster:break_door/door_marker

#史萊姆
execute as @e[type=armor_stand, tag=slime_ride, predicate=game:flag/on_ground] at @s run function monster:effect/slime/split
execute as @e[type=slime,tag=slime_split] at @s run function monster:effect/slime/splited

#熾足獸
execute at @e[type=strider,tag=strider] run effect give @a[team=survivor,distance=..2.5] poison 3 1
execute as @e[type=zombie,tag=strider_ride, predicate=game:flag/on_ground] at @s run function monster:effect/strider

#女巫
execute at @e[type=witch,tag=witch] run effect give @a[team=survivor,distance=..3] weakness 1 1 true

#狼
execute as @e[type=wolf,tag=wolf,team=monitor] at @s unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[team=survivor] UUID
execute as @e[type=armor_stand, tag=wolf_ride, predicate=game:flag/on_ground] at @s run function monster:effect/wolf/death

#鐵巨人
execute as @a[scores={monster_golem=1..}] run function monster:effect/golem/fly

#喚魔者
execute as @e[type=vex,tag=!vex] run data merge entity @s {equipment: {mainhand: {id: "wooden_sword", count: 1b}}, drop_chances: {mainhand: 0.0, offhand: 0.0}, Team:"monitor",DeathLootTable: "summon:empty", PersistenceRequired: 1b, Tags:["monster", "vex"], life_ticks: 200}

#蜘蛛
execute as @e[type=area_effect_cloud, tag=cobweb,nbt={PortalCooldown:0}] at @s run function monster:effect/spider/cobweb

#凋零骷髏
execute as @e[type=armor_stand, tag=wither_skeleton_ride, predicate=game:flag/on_ground] at @s run function monster:effect/wither_skeleton