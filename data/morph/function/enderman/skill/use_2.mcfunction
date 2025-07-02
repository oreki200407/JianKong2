###################################################
# 使用終界使者的第二個技能
# 
# Name   : use_2.mcfunction
# Path   : morph:enderman/skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

playsound block.crop.break ambient @s
execute align xyz run summon shulker ~ ~ ~ {DeathLootTable:"summon:empty",Silent:1b,Team:"monitor",Tags:["morph_shulker_grass_block"],NoAI:1b,AttachFace:0b,Passengers:[{id:"minecraft:block_display",Tags:["morph_grass_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.505f,-1.005f,-0.505f],scale:[1.01f,1.01f,1.01f]},block_state:{Name:"minecraft:grass_block"}}]}