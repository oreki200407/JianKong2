###################################################
# 苦力怕boss的tick
# 
# Name   : tick.mcfunction
# Path   : monster:boss/creeper/
# As     : 苦力怕boss
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#必須由苦力怕執行 不能用世界重生點執行
execute unless entity @s[tag=boss] as c2ee9e2-b-0-5-5 run return run function monster:boss/creeper/tick

#找不到苦力怕boss 就停止一切
execute unless entity c2ee9e2-b-0-5-5 run return run function monster:boss/creeper/end

#每tick執行
schedule function monster:boss/creeper/tick 1

#不使用無限抗火 避免留下藥水雲
effect give @s fire_resistance 1 0 true

#計分板和bossbar
execute store result bossbar jk2:boss value store result score @s boss_health run data get entity @s Health

#已經在準備爆炸階段了 就結束
execute if score @s boss_status matches 2 run return fail
#血量<=10就準備爆炸
execute if score @s boss_health matches ..10 run return run function monster:boss/creeper/status/prepare_explosion

#經過隨機時間後變更狀態
scoreboard players remove @s boss_time 1
execute if score @s boss_time matches 0 run function monster:boss/creeper/change_status

#根據不同的狀態執行不同的tick
execute if score @s boss_status matches 0 run function monster:boss/creeper/status/normal/tick
execute if score @s boss_status matches 1 run function monster:boss/creeper/status/lightning/tick