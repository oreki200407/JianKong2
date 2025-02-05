execute store result score #mission photo run random value 1..5
execute if score #mission photo matches 1 run 
execute if score #mission photo matches 1 run return run data modify storage jk2:data root.monitor.photo.command set value "if entity @a[team=survivor,tag=fall_down,distance=..1]"
execute if score #mission photo matches 2 run 
execute if score #mission photo matches 2 run return run data modify storage jk2:data root.monitor.photo.command set value "if entity @a[team=survivor,tag=fall_down,distance=..1]"
execute if score #mission photo matches 3 run
execute if score #mission photo matches 3 run
execute if score #mission photo matches 4 run
execute if score #mission photo matches 4 run
execute if score #mission photo matches 5 run
execute if score #mission photo matches 5 run