#execute at @e[tag=monster] at @e[distance=..1.5,tag=door] if block ~ ~ ~ #wooden_doors[open=false] run 開門
execute as @e[tag=passengerby] unless data entity @s Passengers run kill @s
kill @e[type=arrow,nbt={inGround:1b}]

#怪物看著未受保護的玻璃會裂開
tag @e[type=marker, tag=being_watched] remove being_watched
execute as @e[type=!player, team=monitor] at @s anchored eyes run function monster:break_glass/raycast
scoreboard players reset @e[type=marker, tag=glass_marker, tag=!being_watched, scores={glass_break=1..}] glass_break

#終界使者
execute as @e[tag=enderman,nbt={HurtTime:10s}] at @s unless entity @a[team=monitor,distance=..6] run tp @s @e[type=armor_stand,tag=point,limit=1,sort=random,distance=..7]

#史萊姆
execute as @e[tag=slimeman] at @s unless entity @e[tag=slime,distance=..1.5] run function monster:effect/slime/split
execute as @e[tag=slimehead,type=slime] at @s run function monster:effect/slime/splited

#熾足獸
execute as @e[tag=strider,type=strider] at @s run effect give @a[team=survivor,distance=..2] wither 3 1 true
execute as @e[tag=striderman,nbt={OnGround:1b}] at @s run function monster:effect/strider

#狼
execute as @e[type=wolf,team=monitor] at @s unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[team=survivor] UUID

#鐵巨人
execute as @a[scores={monster_golem=1..}] run function monster:effect/golem/fly

#喚魔者
execute as @e[tag=!vex_summon,type=vex] run data merge entity @s {HandItems:[{id:"minecraft:wooden_sword",count:1b},{}],HandDropChances:[0.000F,0.085F],Team:"monitor",DeathLootTable:"game:empty",PersistenceRequired:1b,Tags:["monster","vex_summon"],LifeTicks:100}

#蜘蛛
execute as @e[tag=sticky,nbt={Age:60}] at @s run function monster:effect/spider/web
execute as @e[tag=spider,nbt={HurtTime:10s}] at @s unless entity @a[team=monitor,distance=..6] run summon cave_spider ~ ~ ~ {Team:"monitor",DeathLootTable:"game:empty",PersistenceRequired:1b,Health:10f,Tags:["monster"],attributes:[{base:10,id:"max_health"},{base:2,id:"attack_damage"}]}