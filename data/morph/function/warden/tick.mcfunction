###################################################
# 身為伏守者的tick
# 
# Name   : tick.mcfunction
# Path   : morph:warden/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#計算與最近玩家的距離
function morph:warden/distance/root

bossbar set jk2:distance name ["", {text: "距離 ", color: "white"}, {selector: "@p[team=survivor, gamemode=adventure]"}, " ", {score: {name: "#distance_integer", objective: "morph"}, color: "red", extra: [".", {score: {name: "#distance_decimal", objective: "morph"}}]}, {text: " 格", color: "white"}]

#音爆攻擊
execute as @e[type=marker, tag=sonic_boom] at @s run function morph:warden/skill/1/sonic_boom