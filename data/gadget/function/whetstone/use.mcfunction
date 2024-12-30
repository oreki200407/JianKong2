###################################################
# 主手拿著鐵劍，副手拿著磨刀石，右鍵使用磨刀石
# 
# Name   : use.mcfunction
# Path   : gadget:whetstone/
# As     : 使用磨刀石的玩家
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

advancement revoke @s only gadget:fixing_sword

execute if score @s stamina matches ..49 run return run tellraw @s ["","◎ 你的", {"text": "體力","color":"gold"},"不足, 無法磨刀"]

#鐵劍耐久度250
#這個不可以加0.000001
item modify entity @s weapon {function: "set_damage", add: true, damage: 0.004}
#磨刀石耐久度50
#https://medium.com/starbugs/see-why-floating-point-error-can-not-be-avoided-from-ieee-754-809720b32175
item modify entity @s weapon.offhand {function: "set_damage", add: true, damage: -0.02001}

#還有耐久度
execute unless items entity @s weapon.offhand netherite_ingot[damage=50] run return fail

item replace entity @s weapon.offhand with air
execute at @s run playsound block.grindstone.use block @s ~ ~ ~ .5