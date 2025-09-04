###################################################
# 計算與最近玩家的距離
# 
# Name   : root.mcfunction
# Path   : morph:warden/distance/
# As     : 變形的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#乘以10以求精確
execute store result score #distance_x morph run data get entity @s Pos[0] 10
execute store result score #distance_y morph run data get entity @s Pos[1] 10
execute store result score #distance_z morph run data get entity @s Pos[2] 10
execute as @p[team=survivor, gamemode=adventure] run function morph:warden/distance/player_position

scoreboard players operation #distance_x morph -= #player_x morph
scoreboard players operation #distance_y morph -= #player_y morph
scoreboard players operation #distance_z morph -= #player_z morph

#平方相加
scoreboard players operation #distance_x morph *= #distance_x morph
scoreboard players operation #distance_y morph *= #distance_y morph
scoreboard players operation #distance_z morph *= #distance_z morph

scoreboard players operation #distance morph = #distance_x morph
scoreboard players operation #distance morph += #distance_y morph
scoreboard players operation #distance morph += #distance_z morph

#開根號
scoreboard players operation #squared morph = #distance morph
scoreboard players remove #distance morph 1
function morph:warden/distance/iteration
function morph:warden/distance/iteration
function morph:warden/distance/iteration
function morph:warden/distance/iteration
function morph:warden/distance/iteration

#開完根號了 把10除回去
scoreboard players operation #distance_integer morph = #distance morph
scoreboard players operation #distance_integer morph /= #10 constant
scoreboard players operation #distance_decimal morph = #distance morph
scoreboard players operation #distance_decimal morph %= #10 constant