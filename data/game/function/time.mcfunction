schedule function game:time 1s
execute if score #mode system matches 4 store result bossbar jk2:prepare value run return run scoreboard players add #prepare system 1
execute if score #mode system matches 3 store result bossbar jk2:time value run scoreboard players add #time system 1

execute as @a[team=monitor, scores={morph=1..}] run function morph:player/second

execute if score 更換電箱 lobby matches 1.. run function box:switch/auto

execute if score 水管爆裂 info_monitor matches 1.. run scoreboard players remove 水管爆裂 info_monitor 1
execute if score 水管爆裂 info_monitor matches 0 run function box:use/success/water_end

execute if score 禁止監控 info_monitor matches 1.. run scoreboard players remove 禁止監控 info_monitor 1
execute if score 禁止監控 info_monitor matches 0 run function box:use/success/monitor_end

execute if score 釋放酸雨-冷卻 info_monitor matches 1.. run function control:cooldown/acid_rain
execute if score 釋放毒氣-冷卻 info_monitor matches 1.. run function control:cooldown/poison
execute if score 鐵門上鎖-冷卻 info_monitor matches 1.. run function control:cooldown/lock_door
execute if score 更換電箱-冷卻 info_monitor matches 1.. run function control:cooldown/switch_box
execute if score 關閉電箱-冷卻 info_monitor matches 1.. run function control:cooldown/box_off
execute if score 禁止奔跑-冷卻 info_monitor matches 1.. run function control:cooldown/sprint

execute if score 酸雨 info_survivor matches 1.. run scoreboard players remove 酸雨 info_survivor 1
execute if score 毒氣 info_survivor matches 1.. run scoreboard players remove 毒氣 info_survivor 1
execute if score 禁止奔跑 info_survivor matches 1.. run scoreboard players remove 禁止奔跑 info_survivor 1

execute unless entity @e[tag=freeze] as @e[tag=contain] run function contain:value/random