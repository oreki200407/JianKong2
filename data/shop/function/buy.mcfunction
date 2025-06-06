function shop:reset

execute store result score #price money run data get entity @s Inventory[{components:{"minecraft:custom_data":{type:"shop"}}}].components."minecraft:custom_data".price
execute unless score @s money >= #price money run return run function shop:fail

#不能雙槍
scoreboard players reset #gun_check shop
execute if data entity @s Inventory[{id:"minecraft:golden_axe",components:{"minecraft:custom_data":{gun:"true"}}}] run function shop:gun_check
execute if score #gun_check shop matches 1 run return fail

data modify storage jk2:data root.survivor.shop set from entity @s Inventory[{components:{"minecraft:custom_data":{type:"shop"}}}]
data remove storage jk2:data root.survivor.shop.components."minecraft:custom_data"
data remove storage jk2:data root.survivor.shop.components."minecraft:lore"[0]
function shop:give with storage jk2:data root.survivor.shop

scoreboard players operation @s money -= #price money
playsound entity.player.attack.sweep ambient @s ~ ~ ~ 1 2