#檢查場地
execute as @e[tag=box_point,    type=armor_stand] at @s run function edit:name
execute as @e[tag=poison_point, type=armor_stand] at @s run function edit:name
execute as @e[tag=box_point,    type=armor_stand] if data entity @s CustomName run tag @s add box_point_name
execute as @e[tag=poison_point, type=armor_stand] if data entity @s CustomName run tag @s add poison_point_name

execute if score 求生者重生點 edit matches 1 run tellraw @s ["——————————\n",{"text":"求生者重生點",color:gold},": ",{"text":"✔",color:green}]
execute if score 求生者重生點 edit matches 0 run tellraw @s ["——————————\n",{"text":"求生者重生點",color:gold},": ",{"text":"✘",color:red}]

tellraw @s \
[\
	"",\
	{"text":"生怪點",color:gold},": ",{score:{name:"生怪點",objective:"edit"}},"\n",\
	{"text":"門",color:gold},": ",{score:{name:"門",objective:"edit"}},"\n",\
	{"text":"電箱",color:gold},": ",{"selector": "@e[tag=box_point_name, type=armor_stand]"},"\n",\
	{"text":"毒氣點",color:gold},": ",{"selector": "@e[tag=poison_point_name, type=armor_stand]"},\
	"\n——————————"\
]

tag @e[tag=box_point_name,type=armor_stand] remove box_point_name
tag @e[tag=poison_point_name,type=armor_stand] remove poison_point_name

playsound ui.button.click master @s