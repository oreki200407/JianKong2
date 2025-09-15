###################################################
# 釋放酸雨
# 
# Name   : use.mcfunction
# Path   : control:acid_rain/
# As     : 點擊釋放酸雨的監控者
# At     : 釋放酸雨告示牌
# Loop   : 否
# Author : oreki20
###################################################

#酸雨
execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 60.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "釋放酸雨", "color":"gold"}]

scoreboard players remove 電力 info_monitor 60
scoreboard players add #acid_rain_cd system 360

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"釋放酸雨"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#acid_rain_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend

tellraw @a ["◎ 場上將在10秒後",{"text": "釋放酸雨", "color":"gold"},"3分鐘"]

schedule function control:acid_rain/start 10s
schedule function control:acid_rain/end 190s