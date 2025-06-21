###################################################
# 倒地後傳送到展示實體
# 
# Name   : dying.mcfunction
# Path   : game:death/survivor/die/
# As     : 倒地的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

scoreboard players operation #dying_player uuid0 = @s uuid0

#找到儲存了玩家的UUID的展示實體
tag @s add dying
execute as @e[type=item_display, tag=tomb] if score @s uuid0_match = #dying_player uuid0 at @s run tp @a[tag=dying] ~ ~ ~
tag @s remove dying