###################################################
# 使用開鎖器成功
# 
# Name   : success.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove using_unlock
title @s actionbar {"text": "使用開鎖器成功", "color": "gold", "bold": true}

#減少耐久度
#IEEE-754 floating point error, 用-0.1會導致卡在3耐久度
item modify entity @s weapon {function: "set_damage", add: true, damage: -0.11}
execute unless items entity @s weapon tripwire_hook[damage=10] run return fail

#損壞
item replace entity @s weapon with air
execute at @s run playsound entity.item.break