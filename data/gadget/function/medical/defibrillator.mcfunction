###################################################
# 當玩家使用電擊器救人的時候執行
# 
# Name   : defibrillator.mcfunction
# Path   : gadget:medical/
# As     : 使用電擊器的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

advancement revoke @s only gadget:defibrillator
execute if score @s medical_cooldown matches 1.. run return fail
scoreboard players set @s medical_cooldown 10

execute unless entity @e[type=item_display, tag=tomb, distance=..5] run return run tellraw @s ["◎ 使用", {"text": "失敗", "color":"gold"},", 周圍沒有", {"text": "倒地的玩家", "color":"gold"}]
execute as @n[type=item_display, tag=tomb, distance=..5] run function game:death/tomb/revive

clear @s paper[item_name="電擊器"] 1