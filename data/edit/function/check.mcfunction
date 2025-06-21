#檢查場地
execute store result score #point system if entity @e[tag=point,type=armor_stand]
execute store result score #door system if entity @e[tag=door,type=armor_stand]

execute as @e[type=armor_stand,tag=box_point] at @s run function edit:name
execute as @e[type=armor_stand,tag=poison_point] at @s run function edit:name
execute as @e[type=armor_stand,tag=box_point] if data entity @s CustomName run tag @s add box_point_name
execute as @e[type=armor_stand,tag=poison_point] if data entity @s CustomName run tag @s add poison_point_name

execute if entity @e[tag=spawn_survivor,type=armor_stand] run tellraw @s "——————————\n求生者重生點: ✅"
execute unless entity @e[tag=spawn_survivor,type=armor_stand] run tellraw @s "——————————\n求生者重生點: ❎"

tellraw @s ["生怪點: ",{score:{name:"#point",objective:"system"}},"\n門: ",{score:{name:"#door",objective:"system"}},"\n電箱: ",{"selector": "@e[tag=box_point_name]"},"\n毒氣點: ",{"selector": "@e[tag=poison_point_name]"},"\n——————————"]

tag @e[type=armor_stand,tag=box_point_name] remove box_point_name
tag @e[type=armor_stand,tag=poison_point_name] remove poison_point_name

playsound ui.button.click ambient @s