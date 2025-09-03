###################################################
# 使用錘子後
# 
# Name   : use.mcfunction
# Path   : gadget:hammer/
# As     : 使用錘子的玩家
# At     : 玻璃的Position，As的Rotation和Dimension
# Loop   : 是
# Author : Alex_Cai
###################################################

#要放告示牌的地方沒有空位
$execute unless block $(put_sign) #air run return run title @s actionbar {text: "沒有空間", color: "red", bold: true}

#要使用三秒
execute unless score @s hammer = @s hammer_hold run function gadget:hammer/hold
scoreboard players add @s hammer 1
execute unless score @s hammer matches 60 run return run function gadget:hammer/process/root

#三秒到了
title @s actionbar {text: "修理中：▬▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}
scoreboard players set @s hammer 0
$setblock $(put_sign) oak_wall_sign[facing=$(sign_facing)]
$summon marker $(put_sign) {Tags: ["plank"]}
playsound block.wooden_door.close ambient @a
clear @s oak_pressure_plate[item_name="木板"] 1
xp add @s 1 levels

#減少耐久度
#IEEE-754 floating point error, 用-0.05會導致卡在3耐久度
item modify entity @s weapon {function: "set_damage", add: true, damage: -0.051}
execute unless items entity @s weapon tripwire_hook[item_name="錘子", damage=20] run return fail

#損壞
item replace entity @s weapon with air
execute at @s run playsound entity.item.break