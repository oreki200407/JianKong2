###################################################
# 正在戴著防毒面具
# 
# Name   : wearing.mcfunction
# Path   : gadget:mask/
# As     : 戴著防毒面具的玩家
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#只要戴著 耐久度就-1
item modify entity @s armor.head {function: "set_damage", add: true, damage: -0.00042}
stopsound @s player item.armor.equip_iron
execute unless items entity @s armor.head iron_helmet[damage=2400] run return fail

#沒有耐久度了
item replace entity @s armor.head with air
execute at @s run playsound entity.item.break
