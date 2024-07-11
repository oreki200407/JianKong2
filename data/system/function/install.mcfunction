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

scoreboard objectives add system dummy "隱藏資訊"
scoreboard objectives add mode dummy
scoreboard objectives add number dummy
scoreboard objectives add mark dummy ""
scoreboard objectives add truemark dummy
scoreboard objectives add falsemark dummy
scoreboard objectives add lobbyinfo dummy {"translate":"花色狼人殺","color":"red"}
scoreboard objectives add gameinfo dummy {"text": "遊戲資訊","color": "gold","italic": true}
scoreboard objectives add editinfo dummy {"text": "編輯中","color": "dark_aqua","italic": true}
scoreboard objectives add deadround dummy {"text": "死亡回合","color": "gold","italic": true}
scoreboard objectives add playerround dummy
scoreboard objectives add front_distance dummy
scoreboard objectives add toldby dummy
scoreboard objectives add guess dummy
scoreboard objectives add skill dummy
scoreboard objectives add listener dummy
scoreboard objectives add tellmark dummy

scoreboard objectives add death deathCount "死亡數"
scoreboard objectives add use_item trigger
scoreboard objectives add choice trigger

team add spec {"translate":"觀察者"}
team add markHidedPlayer {"translate":"花色隱藏"}

team modify spec color gray
team modify markHidedPlayer color black
team modify spec prefix {"translate":"[觀察者]"}
team modify markHidedPlayer prefix {"translate":"[花色隱藏]"}

data merge storage system:bossbar_discuss {CustomName:'{"translate":"討論階段","color":"gold","bold": true}'}
data merge storage system:bossbar_answer {CustomName:'{"translate":"作答階段","color":"gold","bold": true}'}

bossbar add countdown [{"selector":"@e[limit=1,type = marker, tag = discuss]","color": "gold","bold": true},{"translate": "還剩  "},{"score":{"name": "倒數","objective": "system","bold": true,"color": "purple"}},{"translate": " 秒"}]
bossbar set countdown players @a
bossbar set countdown visible false
bossbar set countdown style notched_6

scoreboard players set 更新 mode 1

tellraw @s [{"text": ">> ","color":"gold"},{"translate": "如果想解除安裝請","color": "red"},{"translate": "點擊 ","color":"gray"},{"translate": "此處","color":"aqua","bold":true,"underlined": true,"clickEvent": {"action": "run_command","value": "/function system:uninstall"}}]