execute store result score #switch light_game run data get storage jk2:data root.monitor.light_game.switch
execute store result score #left light_game run data get storage jk2:data root.monitor.light_game.switch
execute store result score #right light_game run data get storage jk2:data root.monitor.light_game.switch
execute store result score #up light_game run data get storage jk2:data root.monitor.light_game.switch
execute store result score #down light_game run data get storage jk2:data root.monitor.light_game.switch

execute if data storage jk2:data root.monitor.light_game.chest2 if score #switch light_game matches 2..6 run scoreboard players add #up light_game 27
execute unless data storage jk2:data root.monitor.light_game.chest2 if score #switch light_game matches 20..24 run scoreboard players remove #down light_game 27

execute store result storage jk2:data root.monitor.light_game.left int 1 run scoreboard players remove #left light_game 1
execute store result storage jk2:data root.monitor.light_game.right int 1 run scoreboard players add #right light_game 1
execute store result storage jk2:data root.monitor.light_game.up int 1 run scoreboard players remove #up light_game 9
execute store result storage jk2:data root.monitor.light_game.down int 1 run scoreboard players add #down light_game 9

execute if score #up light_game matches ..-1 run data modify storage jk2:data root.monitor.light_game.up set value 30

execute unless data storage jk2:data root.monitor.light_game.chest2 run function power:light_game/switch/success/chest1 with storage jk2:data root.monitor.light_game
execute if data storage jk2:data root.monitor.light_game.chest2 run function power:light_game/switch/success/chest2 with storage jk2:data root.monitor.light_game