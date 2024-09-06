###################################################
# 終界使者放置的方塊展示實體，在失去界伏蚌後清除
# 
# Name   : block_display.mcfunction
# Path   : morph:enderman/
# As     : 草方塊展示實體
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#記錄自己的UUID
execute store result score #grass_block uuid0 run data get entity @s UUID[0]

#先假設已經找不到了
scoreboard players set #found_shulker morph 0

#如果真的找到 再推翻假設
execute as @e[type=shulker] if score @s uuid0 = #grass_block uuid0 run scoreboard players set #found_shulker morph 1

#假設沒有被推翻
execute if score #found_shulker morph matches 0 run kill