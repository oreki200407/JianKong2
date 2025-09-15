execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 80.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "禁止奔跑", "color":"gold"}]

scoreboard players remove 電力 info_monitor 80
scoreboard players add #sprint_cd system 300

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"禁止奔跑"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#sprint_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend

tellraw @a ["◎ 10秒後將",{"text": "禁止奔跑", "color":"gold"},"2分鐘"]
schedule function control:sprint/start 10s
schedule function control:sprint/end 130s