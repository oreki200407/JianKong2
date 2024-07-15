###################################################
# 使用錘子後
# 
# Name   : use.mcfunction
# Path   : gadget:hammer/
# As     : 求生者
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 否
# Author : Alex Cai
###################################################

#要放告示牌的地方沒有空位
$execute unless block $(put_sign) #air run return run tellraw @s "沒有空間"

#要使用三秒
scoreboard players add @s hammer 1
execute unless score @s hammer matches 60 run return run function gadget:hammer/time/root

#三秒到了
title @s actionbar [{"text": "修理中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold": true}]
scoreboard players set @s hammer 0
$setblock $(put_sign) oak_wall_sign[facing=$(sign_facing)]

#減少耐久度
#IEEE-754 floating point error, 用-0.1會導致卡在3耐久度
item modify entity @s weapon {"function": "set_damage", "add": true, damage: -0.11}
execute unless items entity @s weapon iron_axe[damage=10] run return fail

#損壞
item replace entity @s weapon with air
playsound entity.item.break