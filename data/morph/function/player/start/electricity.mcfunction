#最後5分鐘免費
execute at @e[tag=morph_machine, type=marker, limit=1] if block ~ ~-1 ~-2 air run return 100

#是簡單 且 沒人正在變形
execute if score #difficulty system matches 1 unless entity @a[scores={morph=1..}, limit=1] run return 100

#電力不足 fail
execute unless score 電力 info_monitor matches 50.. run return fail

scoreboard players remove 電力 info_monitor 50
return 100