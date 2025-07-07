scoreboard players remove @s contain_health 1
data merge entity @e[tag=contain_value_health,limit=1] {text:[{"text":"血量\n"},{score:{name:"@e[tag=contain_villager,limit=1]",objective:"contain_health"}},{"text":"\n"},{score:{name:"@e[tag=contain_skeleton,limit=1]",objective:"contain_health"}},{"text":"\n"},{score:{name:"@e[tag=contain_spider,limit=1]",objective:"contain_health"}},{"text":"\n"},{score:{name:"@e[tag=contain_zombie,limit=1]",objective:"contain_health"}},{"text":"\n"},{score:{name:"@e[tag=contain_creeper,limit=1]",objective:"contain_health"}}]}

execute if entity @s[scores={contain_health=8..}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的血量過低"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]