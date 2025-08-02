execute unless score #trap trap_cooldown matches 1.. run return run tellraw @s ["◎ 目前投放次數", {"text": "不足", "color": "gold"}]

execute unless score 電力 info_monitor matches 2.. run return run function monitor:observe/player/summon/fail

scoreboard players remove #trap trap_cooldown 1
scoreboard players remove 電力 info_monitor 2
execute anchored eyes run function monitor:observe/player/summon/raycast