execute if entity @a[nbt={EnderItems:[{Slot:10b,components:{"minecraft:enchantments":{levels:{"minecraft:looting":2}}}}]}] run return run function upgrade:player/weapon/looting/3
execute if entity @a[nbt={EnderItems:[{Slot:10b,components:{"minecraft:enchantments":{levels:{"minecraft:looting":1}}}}]}] run return run function upgrade:player/weapon/looting/2
function upgrade:player/weapon/looting/1