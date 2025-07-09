#檢查場地
execute as @e[type=armor_stand,tag=box_point] at @s run function edit:name
execute as @e[type=armor_stand,tag=poison_point] at @s run function edit:name
execute as @e[type=armor_stand,tag=box_point] if data entity @s CustomName run tag @s add box_point_name
execute as @e[type=armor_stand,tag=poison_point] if data entity @s CustomName run tag @s add poison_point_name

execute if score 求生者重生點 edit matches 1 run tellraw @s ["——————————\n",{"text":"求生者重生點",color:gold},": ",{"text":"✔",color:green}]
execute if score 求生者重生點 edit matches 0 run tellraw @s ["——————————\n",{"text":"求生者重生點",color:gold},": ",{"text":"✘",color:red}]

tellraw @s ["",{"text":"生怪點",color:gold},": ",{score:{name:"生怪點",objective:"edit"}},"\n",{"text":"門",color:gold},": ",{score:{name:"門",objective:"edit"}},"\n",{"text":"電箱",color:gold},": ",{"selector": "@e[type=armor_stand, tag=box_point_name]"},"\n",{"text":"毒氣點",color:gold},": ",{"selector": "@e[type=armor_stand, tag=poison_point_name]"},"\n——————————"]

tag @e[type=armor_stand,tag=box_point_name] remove box_point_name
tag @e[type=armor_stand,tag=poison_point_name] remove poison_point_name

playsound ui.button.click ambient @s