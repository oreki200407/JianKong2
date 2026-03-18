data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{type:"box"}}}]
execute if data block ~ ~ ~ Items[0] run data modify block ~ ~ ~ Items[0].Slot set value 0b
item replace entity @s player.cursor from block ~ ~ ~ container.0
function box:use/reset