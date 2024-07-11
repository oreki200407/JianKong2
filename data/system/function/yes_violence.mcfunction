effect give @s weakness infinite 1 true
effect give @s night_vision infinite 10 true
function answer:game_death

execute store result score 存活人數 gameinfo if entity @a[team = !spec]

#-------無人生還平局-------
execute if score 存活人數 gameinfo matches 0 as @a run function endings:no_live_draw

#-------紅心J獨贏-------
execute if entity @a[tag = heartJ, team = !spec] unless entity @a[tag = !heartJ, team = !spec] as @a run function endings:heart_j_wins

#-------所有好人獲勝-------
execute if score 存活人數 gameinfo matches 1.. unless entity @a[tag = heartJ, team = !spec] as @a run function endings:everyone_wins