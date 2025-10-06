playsound ui.button.click master @s

execute if items entity @s weapon.mainhand tripwire_hook[item_name="鑰匙"] run return run function gadget:unlock/key

execute if entity @s[tag=using_unlock] run return fail

tellraw @s ["◎ 上下滾動", {text: "滑鼠滾輪", color: "gold"}, "來進行解鎖"]
playsound block.chest.open master @s ~ ~ ~ 1 2
tag @s add using_unlock
scoreboard players set @s unlock_progess 0
execute store result score @s unlock_slot run random value 0..8