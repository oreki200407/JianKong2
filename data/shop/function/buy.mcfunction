function shop:reset

execute store result score #price money run data get entity @s Inventory[{components:{"minecraft:custom_data":{type:"shop"}}}].components."minecraft:custom_data".price

execute if score @s money < #price money run return run function shop:fail

scoreboard players operation @s money -= #price money
playsound entity.player.attack.sweep ambient @s ~ ~ ~ 1 2

function shop:give with entity @s Inventory[{components:{"minecraft:custom_data":{type:"shop"}}}]