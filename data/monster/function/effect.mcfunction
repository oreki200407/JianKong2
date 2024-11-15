#execute at @e[tag=monster] at @e[distance=..1.5,tag=door] if block ~ ~ ~ #wooden_doors[open=false] run 開門
execute as @e[tag=passengerby] unless data entity @s Passengers run kill @s
kill @e[type=arrow,nbt={inGround:1b}]

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
scoreboard players add @a[scores={hitfly=1..}] hitfly 1
effect clear @a[scores={hitfly=3}] levitation
scoreboard players reset @a[scores={hitfly=3}] hitfly

#衛道士
execute as @e[tag=vindicator] at @s positioned ^ ^1 ^1 if block ~ ~ ~ glass align xyz unless entity @e[tag=windowB,distance=..0.89] run summon area_effect_cloud ~0.5 ~0.5 ~0.5 {Duration:2000000000,Tags:["windowB"]}

#喚魔者
execute as @e[tag=!vexS,type=vex] run data merge entity @s {HandItems:[{id:"minecraft:wooden_sword",count:1b},{}],HandDropChances:[0.000F,0.085F],Team:"monitor",DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Tags:["monster","vexS"],LifeTicks:100}

#蜘蛛
execute as @e[tag=sticky,nbt={Age:60}] at @s run setblock ~ ~ ~ air
kill @e[tag=sticky,nbt={Age:60}]
execute as @e[tag=spider,nbt={HurtTime:10s}] at @s unless entity @a[team=monitor,distance=..6] run summon cave_spider ~ ~ ~ {Team:"monitor",DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:10f,Tags:["monster"],attributes:[{base:10,id:"max_health"},{base:2,id:"attack_damage"}]}