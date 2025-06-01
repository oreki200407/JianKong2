schedule function game:time 1s
execute if score #mode system matches 4 store result bossbar jk2:prepare value run return run scoreboard players add #prepare system 1
execute if score #mode system matches 3 store result bossbar jk2:time value run return run scoreboard players add #time system 1

execute if score 更換電箱 lobby matches 1.. run function box:switch/auto

execute if score 水管爆裂 info_monitor matches 0.. run scoreboard players add 水管爆裂 info_monitor 1
execute if score 水管爆裂 info_monitor matches 180.. run function box:use/success/water_end

execute if score 禁止監控 info_monitor matches 0.. run scoreboard players add 禁止監控 info_monitor 1
execute if score 禁止監控 info_monitor matches 180.. run function box:use/success/monitor_end