title @a[tag=heartJ] actionbar ["",{"translate":"狼人: ","bold": true,"color": "dark_red"},{"selector": "@a[tag=heartJ]" ,"bold": true,"color": "dark_red"}]

execute as @a[tag=!playing] run function system:spectate

#-------如果不允許暴力，賦予遊戲中玩家永久效果 飽食、回復、抗性、虛弱、夜視-------
execute as @a[scores = {death = 1}] at @s if score 允許暴力 lobbyinfo matches 0 if entity @e[tag = treasure_point,distance=..0.1] run function system:no_violence

#-------如果允許暴力，則玩家死亡算做真的死亡，只會獲得虛弱，自然回血關閉、夜視，並轉觀察-------
execute as @a[scores = {death = 1}] at @s if score 允許暴力 lobbyinfo matches -1 if entity @e[tag = treasure_point,distance=..0.1] run function system:yes_violence

#-------選花色告知-------
execute as @a[scores = {choice = 1..}] if score 階段 system matches 2 run function gameplay:tell_selected_mark

#-------永遠啟用記分板-------
execute if score 階段 system matches 2 run scoreboard players enable @a[team = !spec] choice

#-------偵測treasure旁邊小於1格是否有玩家-------
execute at @e[type = item, tag = treasure_item] as @p[team = !spec, distance = ..1] run function items:treasure/loot_treasure

#-------使用道具-------
execute as @a[scores={use_item=1..}] at @s run function items:use_item