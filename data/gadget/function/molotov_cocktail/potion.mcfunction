###################################################
# 檢測藥水
# 
# Name   : potion.mcfunction
# Path   : gadget:molotov_cocktail/
# As     : 藥水
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s add checked

#不是燃燒瓶就算了
#藥水不能用if items entity @s content
#有時候我會懷疑Mojang的標準到底是什麼
execute unless entity @s[nbt={Item: {components: {"minecraft:potion_contents": {custom_name: "molotov_cocktail"}}}}] run return fail

#讓標記騎著燃燒瓶
tag @s add temp
execute at @s summon marker run function gadget:molotov_cocktail/summon_marker
tag @s remove temp