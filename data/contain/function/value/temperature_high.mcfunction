scoreboard players add @s contain_temperature 1
data merge entity @e[tag=contain_value_temperature,limit=1] {text:[{"text":"體溫\n"},{score:{name:"@e[tag=contain_villager,limit=1,tag=contain]",objective:"contain_temperature"}},{"text":"\n"},{score:{name:"@e[tag=contain_skeleton,limit=1,tag=contain]",objective:"contain_temperature"}},{"text":"\n"},{score:{name:"@e[tag=contain_spider,limit=1,tag=contain]",objective:"contain_temperature"}},{"text":"\n"},{score:{name:"@e[tag=contain_zombie,limit=1,tag=contain]",objective:"contain_temperature"}},{"text":"\n"},{score:{name:"@e[tag=contain_creeper,limit=1,tag=contain]",objective:"contain_temperature"}}]}

execute if entity @s[scores={contain_temperature=..32}] run return fail
tellraw @a[team=monitor] ["◎ 注意, ",{"selector":"@s","color":"gold"},"的體溫過高"]
execute at @s run playsound entity.player.breath ambient @a[team=monitor]