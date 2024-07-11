function system:reset

gamerule announceAdvancements true
gamerule commandBlockOutput true
gamerule doDaylightCycle true
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doInsomnia true
gamerule doImmediateRespawn false
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doPatrolSpawning true
gamerule doTileDrops true
gamerule doTraderSpawning true
gamerule doWeatherCycle true
gamerule fallDamage true
gamerule keepInventory false
gamerule logAdminCommands true
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule spawnRadius 10

scoreboard objectives remove system
scoreboard objectives remove mode
scoreboard objectives remove number
scoreboard objectives remove mark
scoreboard objectives remove truemark
scoreboard objectives remove falsemark
scoreboard objectives remove lobbyinfo
scoreboard objectives remove gameinfo
scoreboard objectives remove editinfo
scoreboard objectives remove deadround
scoreboard objectives remove playerround
scoreboard objectives remove front_distance
scoreboard objectives remove toldby
scoreboard objectives remove guess
scoreboard objectives remove skill
scoreboard objectives remove use_item
scoreboard objectives remove death
scoreboard objectives remove tellmark
scoreboard objectives remove choice
scoreboard objectives remove listener

team remove spec
team remove markHidedPlayer

execute at @e[type = marker, tag = lobby, limit = 1] run forceload remove ~ ~
effect clear @a
kill @e[tag = lobby]
kill @e[tag = discuss]
kill @e[tag = answer]
kill @e[tag = switch_point]
kill @e[tag = treasure_point]

tellraw @s [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @a [{"text": ">> ","color":"gold"},{"translate":"資料包解除安裝成功","color":"green"}]
tellraw @s [{"text": ">> ","color":"gold"},{"translate":"如果想重新安裝資料包請","color": "red"},{"translate": "點擊 ","color":"gray"},{"translate": "此處","color":"aqua","bold":true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function system:activate"}}]