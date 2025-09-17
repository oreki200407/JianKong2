###################################################
# 召喚給原料的怪物
# 
# Name   : summon.mcfunction
# Path   : contain:
# As     : 收容箱內的標記，tag=contain_marker
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

#清除告示牌
setblock ~-2 ~-1 ~ air

execute if entity @s[tag=contain_villager_marker] run return run summon villager ~ ~ ~ {DeathLootTable:"summon:empty",NoGravity:1b,Rotation:[90f,0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoAI:1b,Tags:["contain","contain_villager"]}
execute if entity @s[tag=contain_skeleton_marker] run return run summon skeleton ~ ~ ~ {DeathLootTable:"summon:empty",NoGravity:1b,Rotation:[90f,0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoAI:1b,Tags:["contain","contain_skeleton"]}
execute if entity @s[tag=contain_spider_marker] run return run summon cave_spider ~ ~ ~ {DeathLootTable:"summon:empty",NoGravity:1b,Rotation:[90f,0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoAI:1b,Tags:["contain","contain_spider"]}
execute if entity @s[tag=contain_zombie_marker] run return run summon zombie ~ ~ ~ {DeathLootTable:"summon:empty",NoGravity:1b,Rotation:[90f,0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoAI:1b,Tags:["contain","contain_zombie"]}
execute if entity @s[tag=contain_creeper_marker] run return run summon creeper ~ ~ ~ {DeathLootTable:"summon:empty",NoGravity:1b,Rotation:[90f,0f],Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoAI:1b,Tags:["contain","contain_creeper"]}