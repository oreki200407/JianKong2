playsound entity.puffer_fish.blow_up ambient @s

data remove storage jk2:data root.monitor.puzzle_game.chest2
data remove storage jk2:data root.monitor.puzzle_game.switch

execute store result storage jk2:data root.monitor.puzzle_game.check int 1 run scoreboard players set #check puzzle_game 0

function power:puzzle_game/switch/check

function power:puzzle_game/switch/none with storage jk2:data root.monitor.puzzle_game
execute if entity @a[scores={puzzle_game=1}] run return fail

execute store result score #switch puzzle_game run data get storage jk2:data root.monitor.puzzle_game.switch
execute store result score #left puzzle_game run data get storage jk2:data root.monitor.puzzle_game.switch
execute store result score #right puzzle_game run data get storage jk2:data root.monitor.puzzle_game.switch
execute store result score #up puzzle_game run data get storage jk2:data root.monitor.puzzle_game.switch
execute store result score #down puzzle_game run data get storage jk2:data root.monitor.puzzle_game.switch

execute if data storage jk2:data root.monitor.puzzle_game.chest2 if score #switch puzzle_game matches 2..6 run scoreboard players add #up puzzle_game 27
execute unless data storage jk2:data root.monitor.puzzle_game.chest2 if score #switch puzzle_game matches 20..24 run scoreboard players remove #down puzzle_game 27

execute store result storage jk2:data root.monitor.puzzle_game.left int 1 run scoreboard players remove #left puzzle_game 1
execute store result storage jk2:data root.monitor.puzzle_game.right int 1 run scoreboard players add #right puzzle_game 1
execute store result storage jk2:data root.monitor.puzzle_game.up int 1 run scoreboard players remove #up puzzle_game 9
execute store result storage jk2:data root.monitor.puzzle_game.down int 1 run scoreboard players add #down puzzle_game 9

execute if score #up puzzle_game matches ..-1 run data modify storage jk2:data root.monitor.puzzle_game.up set value 30

clear @s echo_shard

execute unless data storage jk2:data root.monitor.puzzle_game.chest2 run function power:puzzle_game/switch/success/chest1 with storage jk2:data root.monitor.puzzle_game
execute if data storage jk2:data root.monitor.puzzle_game.chest2 positioned ~1 ~ ~ run function power:puzzle_game/switch/success/chest2 with storage jk2:data root.monitor.puzzle_game