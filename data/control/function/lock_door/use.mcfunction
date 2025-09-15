execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 50.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "鐵門上鎖", "color":"gold"}]

scoreboard players remove 電力 info_monitor 50
scoreboard players add #lock_door_cd system 180

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"鐵門上鎖"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#lock_door_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend

execute as @e[type=marker,tag=door] at @s run function control:lock_door/lock with entity @s data
tellraw @a ["◎ 所有門已被", {"text": "上鎖", "color":"gold"}]