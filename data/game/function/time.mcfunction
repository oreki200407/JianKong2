schedule function game:time 1s
execute if score #mode system matches 4 store result bossbar jk2:prepare value run return run scoreboard players add #prepare system 1
execute if score #mode system matches 3 store result bossbar jk2:time value run scoreboard players add #time system 1

execute as @e[type=armor_stand,tag=summon_picked,scores={summon_cooldown=1..}] run function summon:head/cooldown
execute as @e[type=armor_stand,tag=summon_picked,scores={summon_shuffle=1..}] run function summon:operation/shuffle/cooldown

execute as @a[team=monitor, scores={morph=1..}] run function morph:player/second

execute if score 更換電箱 lobby matches 1.. run function box:switch/auto

execute if score 水管爆裂 info_monitor matches 1.. run scoreboard players remove 水管爆裂 info_monitor 1
execute if score 水管爆裂 info_monitor matches 0 run function box:use/success/water/end

execute if score 禁止監控 info_monitor matches 1.. run scoreboard players remove 禁止監控 info_monitor 1
execute if score 禁止監控 info_monitor matches 0 run function box:use/success/monitor/end

execute if score #acid_rain_cd system matches 1.. run function control:cooldown/acid_rain
execute if score #poison_cd system matches 1.. run function control:cooldown/poison
execute if score #lock_door_cd system matches 1.. run function control:cooldown/lock_door
execute if score #switch_box_cd system matches 1.. run function control:cooldown/switch_box
execute if score #box_off_cd system matches 1.. run function control:cooldown/box_off
execute if score #sprint_cd system matches 1.. run function control:cooldown/sprint

execute if score 酸雨 info_survivor matches 1.. run scoreboard players remove 酸雨 info_survivor 1
execute if score 毒氣 info_survivor matches 1.. run scoreboard players remove 毒氣 info_survivor 1
execute if score 禁止奔跑 info_survivor matches 1.. run scoreboard players remove 禁止奔跑 info_survivor 1

execute unless entity @e[type=interaction, tag=freeze] as @e[tag=contain] run function contain:value/random