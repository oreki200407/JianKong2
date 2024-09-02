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
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true

scoreboard objectives add lobby dummy {"text": "監控圍城 II", "color": "red"}
scoreboard objectives add info dummy {"text": "遊戲資訊", "color": "gold"}
scoreboard objectives add edit dummy {"text": "編輯中", "color": "dark_aqua"}
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add system dummy
scoreboard objectives add mode dummy
scoreboard objectives add death deathCount
scoreboard objectives add money dummy
scoreboard objectives add kill totalKillCount
scoreboard objectives add stamina dummy "體力值"

scoreboard objectives add front_distance dummy
scoreboard objectives add reload_time dummy
scoreboard objectives add reload dummy
scoreboard objectives add gun_cooldown dummy
scoreboard objectives add open_ender_chest custom:open_enderchest

#召唤
scoreboard objectives add summon_count dummy "召喚數量"
scoreboard objectives add summon_monster dummy "怪物編號"
scoreboard objectives add summon_operate dummy "操作終界箱"
scoreboard objectives add summon_power dummy "召喚電力"
scoreboard objectives add summon_cooldown dummy "冷卻"

#死亡
scoreboard objectives add revive_time dummy "復活時間"
scoreboard objectives add death_time dummy "復活時間"
scoreboard objectives add uuid0 dummy "UUID[0]"

#捕獸夾
scoreboard objectives add trap dummy "陷阱"
scoreboard objectives add jump_break custom:jump "跳躍掙脫"

#錘子
scoreboard objectives add hammer dummy "錘子"

#開鎖器
scoreboard objectives add unlock_progess dummy "開鎖進度"
scoreboard objectives add unlock_slot dummy "開鎖欄位"
scoreboard objectives add selected_slot dummy

#監視器
scoreboard objectives add camera dummy "監視器"
scoreboard objectives add camera_interface trigger "使用監視器"
scoreboard objectives add camera_level dummy "監視器等級"
scoreboard objectives add level dummy "電力"
scoreboard objectives add heat dummy "過熱"
scoreboard objectives add camera_trap dummy

#修理
scoreboard objectives add jump_fix custom:jump "跳躍修理"
scoreboard objectives add fix_progress dummy "修理進度"
scoreboard objectives add fix_slot dummy "修理欄位"
scoreboard objectives add fix_time dummy "檢定時間"

#玻璃裂開
scoreboard objectives add glass_break dummy

#人體變形
scoreboard objectives add morph dummy

scoreboard objectives add boss_health dummy "Boss血量"
scoreboard objectives add boss_time dummy "Boss時間"
scoreboard objectives add boss_status dummy "Boss狀態"

team add survivor
team add monitor
team add spec

team modify survivor color red
team modify monitor color blue
team modify spec color gray

team modify survivor prefix "[求生者]"
team modify monitor prefix "[監控者]"
team modify spec prefix "[旁觀者]"

team modify survivor seeFriendlyInvisibles true
team modify monitor seeFriendlyInvisibles true
team modify survivor friendlyFire false
team modify monitor friendlyFire false

scoreboard objectives setdisplay sidebar edit
scoreboard players set 更新 system 1

bossbar add jk2:boss "Boss血條"

#可供變形的怪物
data modify storage jk2:data root.morph.monsters set value ["zombie", "skeleton", "creeper"]

tellraw @a ["◎ ", {"text": "資料包", "color": "gold"}, "已更新至", {"text": "最新版", "color": "gold"}]