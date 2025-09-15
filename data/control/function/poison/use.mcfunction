#毒氣
execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 70.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放毒氣", "color":"gold"}]

scoreboard players remove 電力 info_monitor 70
scoreboard players add #poison_cd system 300

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"釋放毒氣"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#poison_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend

#抽毒氣
tag @e[type=armor_stand, tag=poison_point,sort=random,limit=1] add poison_choose

scoreboard players display numberformat 毒氣位置 info_survivor fixed {selector: "@e[type=armor_stand, tag=poison_choose,limit=1]"}
tellraw @a ["◎ ", {selector:"@e[type=armor_stand, tag=poison_choose,limit=1]"},"將在10秒後",{"text": "釋放毒氣", "color":"gold"},"3分鐘"]
schedule function control:poison/start 10s
schedule function control:poison/end 190s