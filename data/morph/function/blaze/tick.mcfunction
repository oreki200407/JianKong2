###################################################
# 身為烈焰使者的tick
# 
# Name   : tick.mcfunction
# Path   : morph:blaze/
# As     : 變形的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#若在技能效果時間內 沒有標記 就召喚標記
execute at @s[scores={morph_skill_2_duration=1..}] align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=marker, tag=blaze_fire, distance=...5] run summon marker ~ ~ ~ {Tags: ["blaze_fire", "morph_product"]}