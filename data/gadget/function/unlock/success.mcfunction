###################################################
# 使用開鎖器成功
# 
# Name   : success.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

tag @s remove using_unlock
tellraw @s ["◎ 鐵門已", {text: "解鎖", color: "gold"}]
title @s actionbar {text: "開鎖中：▬▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}
playsound block.chest.open master
xp add @s 1 levels
execute as @n[type=marker, tag=door] at @s run function gadget:unlock/door with entity @s data

#消耗開鎖器
clear @s tripwire_hook[item_name="開鎖器"] 1