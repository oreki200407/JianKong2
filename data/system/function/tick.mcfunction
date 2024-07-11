execute as @n[tag = lobby, scores={mode=1}] run function tick:edit
execute as @n[tag = lobby, scores={mode=2}] run function tick:lobby
execute as @n[tag = lobby, scores={mode=3}] run function tick:start
execute as @n[tag = lobby] unless score 更新 system matches 1 run function system:update