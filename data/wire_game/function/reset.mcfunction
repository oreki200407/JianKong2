item replace block ~ ~ ~ container.0 with green_terracotta
item replace block ~1 ~ ~ container.26 with red_terracotta
scoreboard players reset #reset wire_game
execute store result storage jk2:data root.monitor.wire_game.number int 1 run scoreboard players add #reset wire_game 0

function wire_game:insert