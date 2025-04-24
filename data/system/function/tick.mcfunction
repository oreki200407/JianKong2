execute if entity @e[type=marker, tag=lobby, limit=1] as @a[tag=!join] run function system:join
execute if score #mode system matches 1 run return run function tick:edit
execute if score #mode system matches 2 run return run function tick:lobby
execute if score #mode system matches 3 run return run function tick:start
execute if score #mode system matches 4 run return run function tick:prepare
execute unless score 更新 system matches 1 run function system:install