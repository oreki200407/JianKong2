###################################################
# 使用技能(執行)
# 
# Name   : run.mcfunction
# Path   : morph:player/use_skill/
# As     : 使用技能的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#開始冷卻
$execute store result score @s morph_skill_$(id) run data get storage jk2:data root.morph.cooldown.$(monster)[$(id)]

#清除進度
$advancement revoke @s only morph:use_skill_$(id)

#根據不同的怪物呼叫技能函數
$function morph:$(monster)/skill/use_$(id)