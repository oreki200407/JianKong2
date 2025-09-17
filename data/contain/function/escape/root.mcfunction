###################################################
# 收容失效，怪物突破收容
# 
# Name   : root.mcfunction
# Path   : contain:escape/
# As     : 出逃的怪物
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

scoreboard players operation @n[type=marker,tag=contain_marker,distance=..1] contain_temperature = @s contain_temperature
scoreboard players operation @n[type=marker,tag=contain_marker,distance=..1] contain_food = @s contain_food
scoreboard players operation @n[type=marker,tag=contain_marker,distance=..1] contain_health = @s contain_health

scoreboard players reset @s contain_temperature
scoreboard players reset @s contain_food
scoreboard players reset @s contain_health
function contain:update_text/all

tellraw @a[team=monitor] ["◎ ",{selector:"@s"},"從收容櫃",{"text":"逃出來了","color":"gold"}]
tp @s ~ ~-999 ~
fill ~-1 ~ ~ ~-1 ~1 ~ air destroy

execute if entity @s[tag=contain_zombie] run return run summon zombie ~-1.5 ~ ~ {Tags:["contain_zombie","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_skeleton] run return run summon skeleton ~-1.5 ~ ~ {Tags:["contain_skeleton","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_creeper] run return run summon creeper ~-1.5 ~ ~ {DeathLootTable: "summon:empty", Fuse:100s, PersistenceRequired:1b, Passengers: [{id: "husk", PersistenceRequired:1b, Invulnerable:1b, Silent:1b, IsBaby:1b, active_effects: [{id: "invisibility", duration: -1, show_particles: false}], attributes: [{id: "attack_damage", base: 0}, {id: "scale", base: 0.0001}], Silent:1b, DeathLootTable: "summon:empty", Tags: ["contain_creeper_riding"]}], Tags: ["contain_creeper","contain_escape"]}
execute if entity @s[tag=contain_spider] run return run summon cave_spider ~-1.5 ~ ~ {Tags:["contain_spider","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}
execute if entity @s[tag=contain_villager] run return run summon zombie_villager ~-1.5 ~ ~ {Tags:["contain_villager","contain_escape"],Silent:1b,DeathLootTable:"summon:empty",PersistenceRequired:1b}