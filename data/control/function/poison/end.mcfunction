tellraw @a ["◎ 毒氣已", {"text": "消失", "color":"gold"}]
tag @e[type=armor_stand, tag=poison] remove poison
scoreboard players reset 毒氣 info_survivor
scoreboard players reset 毒氣位置 info_survivor