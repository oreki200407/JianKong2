#---召喚怪物---
tellraw @a[team=monitor] ["◎ ",{selector:"@s"},"從收容櫃",{"text":"逃出來了","color":"gold"}]
tp @s ~ ~-999 ~
fill ~-1 ~ ~ ~-1 ~1 ~ air destroy

execute if entity @s[tag=contain_zombie] run return run summon zombie ~-1.5 ~ ~ {Tags:["contain_zombie","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_skeleton] run return run summon skeleton ~-1.5 ~ ~ {Tags:["contain_skeleton","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_creeper] run return run summon creeper ~-1.5 ~ ~ {Tags:["contain_creeper","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b,Fuse:100s}
execute if entity @s[tag=contain_spider] run return run summon cave_spider ~-1.5 ~ ~ {Tags:["contain_spider","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_villager] run return run summon zombie_villager ~-1.5 ~ ~ {Tags:["contain_villager","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}