setblock ~ ~ ~ air
playsound ui.button.click ambient @p ~ ~ ~

execute if entity @e[tag=poison_setting] run return run function edit:poison/fail

tag @s add poison_setting
tag @s remove poison_a

tellraw @p ["◎ 毒氣A點", {"text": "設定完成", "color":"gold"},", 請設定毒氣B點"]

execute store result score #a_x poison_point run data get entity @s Pos[0]
execute store result score #a_y poison_point run data get entity @s Pos[1]
execute store result score #a_z poison_point run data get entity @s Pos[2]