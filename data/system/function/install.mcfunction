difficulty hard

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule spawnRadius 0

scoreboard objectives add lobby dummy {"text": "監控圍城 II", "color": "red"}
scoreboard objectives add info dummy {"text": "遊戲資訊", "color": "gold"}
scoreboard objectives add edit dummy {"text": "編輯中", "color": "dark_aqua"}
scoreboard objectives add system dummy
scoreboard objectives add mode dummy
scoreboard objectives add death deathCount

scoreboard objectives add front_distance dummy
scoreboard objectives add reload_time dummy
scoreboard objectives add ammo_smg dummy
scoreboard objectives add ammo_pistol dummy

#死亡
scoreboard objectives add revive_time dummy "復活時間"
scoreboard objectives add death_time dummy "復活時間"
scoreboard objectives add uuid0 dummy "UUID[0]"

#捕獸夾
scoreboard objectives add trap dummy "陷阱"
scoreboard objectives add jump custom:jump "跳躍"

#噴火器
scoreboard objectives add flame_fly dummy "火焰飛行"

team add survivor
team add monitor
team add spec

team modify survivor color gold
team modify monitor color aqua
team modify spec color gray

team modify survivor prefix "[求生者]"
team modify monitor prefix "[監控者]"
team modify spec prefix "[旁觀者]"

scoreboard players set 更新 system 1