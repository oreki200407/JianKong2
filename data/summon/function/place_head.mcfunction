#殭屍
execute store success score #head open_ender_chest run clear @s zombie_head
execute if score #head open_ender_chest matches 1 run return run item replace entity @s enderchest.18 with zombie_head

#骷髏
execute store success score #head open_ender_chest run clear @s skeleton_skull
execute if score #head open_ender_chest matches 1 run return run item replace entity @s enderchest.18 with skeleton_skull

#苦力怕
execute store success score #head open_ender_chest run clear @s creeper_head
execute if score #head open_ender_chest matches 1 run return run item replace entity @s enderchest.18 with creeper_head

#都失敗
return fail