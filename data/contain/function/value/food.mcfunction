scoreboard players remove @s contain_food 1

execute if entity @s[scores={contain_food=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的飽食度過低"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]

data merge entity @e[tag=contain_value_food,limit=1] {text:[{"text":"飽食度\n"},{score:{name:"@e[tag=contain_villager,limit=1]",objective:"contain_food"}},{"text":"\n"},{score:{name:"@e[tag=contain_skeleton,limit=1]",objective:"contain_food"}},{"text":"\n"},{score:{name:"@e[tag=contain_spider,limit=1]",objective:"contain_food"}},{"text":"\n"},{score:{name:"@e[tag=contain_zombie,limit=1]",objective:"contain_food"}},{"text":"\n"},{score:{name:"@e[tag=contain_creeper,limit=1]",objective:"contain_food"}}]}