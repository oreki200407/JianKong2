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

#技能效果結束了
execute unless score @s morph_skill_2_duration matches 1.. run return fail

#沒有標記就召喚標記
execute at @s align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=marker, tag=blaze_fire, distance=...5] run summon marker ~ ~ ~ {PortalCooldown:80,Tags: ["blaze_fire", "morph_product"]}