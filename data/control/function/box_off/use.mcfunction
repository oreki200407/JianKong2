###################################################
# 關閉電箱
# 
# Name   : use.mcfunction
# Path   : control:box_off/
# As     : 點擊關閉電箱的監控者
# At     : 關閉電箱告示牌
# Loop   : 否
# Author : oreki20
###################################################

execute unless score #mode system matches 3 run return fail
execute if score #switching system matches 1 run return fail

execute unless score 電力 info_monitor matches 50.. run return run tellraw @s ["◎ 電力不足, 無法", {"text": "關閉電箱", "color":"gold"}]

scoreboard players remove 電力 info_monitor 50
scoreboard players add #box_off_cd system 180

setblock ~ ~ ~ dark_oak_wall_sign[facing=north]{front_text:{messages:["",{bold:1b,color:"white",text:"關閉電箱"},[{text:"冷卻時間: ",color:"red",bold:1b},{score:{name:"#box_off_cd",objective:"system"}}],""]},is_waxed:1b}
playsound block.piston.extend

tag @e[type=armor_stand, tag=box] add box_off
scoreboard players set #box fix_progress 0
execute at @e[type=armor_stand, tag=box_off] run function box:use/box_off
tellraw @a ["◎ 電箱已被", {"text": "關閉", "color":"gold"}, ", 求生者無法使用",{"text": "電箱", "color":"gold"}]