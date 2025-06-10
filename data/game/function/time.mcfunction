schedule function game:time 1s
execute if score #mode system matches 4 store result bossbar jk2:prepare value run return run scoreboard players add #prepare system 1
execute if score #mode system matches 3 store result bossbar jk2:time value run return run scoreboard players add #time system 1

execute if score 更換電箱 lobby matches 1.. run function box:switch/auto

execute if score 水管爆裂 info_monitor matches 0.. run scoreboard players add 水管爆裂 info_monitor 1
execute if score 水管爆裂 info_monitor matches 180.. run function box:use/success/water_end

execute if score 禁止監控 info_monitor matches 0.. run scoreboard players add 禁止監控 info_monitor 1
execute if score 禁止監控 info_monitor matches 180.. run function box:use/success/monitor_end

execute if score 釋放酸雨-冷卻 info_monitor matches 1.. run scoreboard players remove 釋放酸雨-冷卻 info_monitor 1
execute if score 釋放毒氣-冷卻 info_monitor matches 1.. run scoreboard players remove 釋放毒氣-冷卻 info_monitor 1
execute if score 鐵門上鎖-冷卻 info_monitor matches 1.. run scoreboard players remove 鐵門上鎖-冷卻 info_monitor 1
execute if score 更換電箱-冷卻 info_monitor matches 1.. run scoreboard players remove 更換電箱-冷卻 info_monitor 1
execute if score 關閉電箱-冷卻 info_monitor matches 1.. run scoreboard players remove 關閉電箱-冷卻 info_monitor 1

execute if score 釋放酸雨 info_survivor matches 1.. run scoreboard players remove 釋放酸雨 info_survivor 1
execute if score 釋放毒氣 info_survivor matches 1.. run scoreboard players remove 釋放毒氣 info_survivor 1
execute if score 釋放酸雨 info_survivor matches 0 run function control:acid_rain/end
execute if score 釋放毒氣 info_survivor matches 0 run function control:poison/end

execute as @e[tag=contain] run function contain:random