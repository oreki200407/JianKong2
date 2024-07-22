execute if score @s open_ender_chest matches 1.. run function summon:open_ender_chest

execute unless data entity @s EnderItems[{Slot:1b}] run data modify storage jk2:data root.summon.head set value 1
execute unless data entity @s EnderItems[{Slot:2b}] run data modify storage jk2:data root.summon.head set value 2
execute unless data entity @s EnderItems[{Slot:3b}] run data modify storage jk2:data root.summon.head set value 3
execute unless data entity @s EnderItems[{Slot:4b}] run data modify storage jk2:data root.summon.head set value 4
execute unless data entity @s EnderItems[{Slot:5b}] run data modify storage jk2:data root.summon.head set value 5
execute unless data entity @s EnderItems[{Slot:6b}] run data modify storage jk2:data root.summon.head set value 6
execute unless data entity @s EnderItems[{Slot:7b}] run data modify storage jk2:data root.summon.head set value 7
execute at @s if data storage jk2:data root.summon.head run function summon:select with storage jk2:data root.summon