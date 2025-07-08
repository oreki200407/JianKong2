title @a title {"text":"早上來臨","bold":true,"color":"gold"}
effect give @a[team=!spec] resistance 3 100 true

schedule clear contain:give
schedule clear control:acid_rain/start
schedule clear control:acid_rain/end
schedule clear control:sprint/start
schedule clear control:sprint/end
schedule clear control:poison/start
schedule clear control:poison/end
schedule clear game:time
schedule clear summon:natural
schedule clear monster:boss/warden/tick
schedule clear monster:boss/warden/tick
schedule clear monster:boss/creeper/tick
schedule clear monster:boss/creeper/tick

scoreboard players reset 釋放酸雨-冷卻 info_monitor
scoreboard players reset 釋放毒氣-冷卻 info_monitor
scoreboard players reset 鐵門上鎖-冷卻 info_monitor
scoreboard players reset 更換電箱-冷卻 info_monitor
scoreboard players reset 關閉電箱-冷卻 info_monitor
scoreboard players reset 禁止奔跑-冷卻 info_monitor
scoreboard players reset 電箱位置 info_survivor

execute if score 酸雨 info_survivor matches 1.. run function control:acid_rain/end
execute if score 毒氣 info_survivor matches 1.. run function control:poison/end
execute if score 禁止奔跑 info_survivor matches 1.. run function control:sprint/end
execute if score 水管爆裂 info_monitor matches 1.. run function box:use/success/water_end
execute if score 禁止監控 info_monitor matches 1.. run function box:use/success/monitor_end

#復原狀態
execute as @a[tag=fractured] run function gadget:medical/fracture/heal
execute as @a[tag=trapped] run function gadget:bear_trap/trapped/release
execute as @e[type=item_display, tag=tomb] run function game:death/tomb/revive
execute as @a[team=monitor, scores={morph=1..}] at @s run function morph:player/end with entity @s equipment.head.components."minecraft:custom_data"

execute unless score #switch system matches 1 run return run schedule function game:switch 3s
schedule function game:end 3s