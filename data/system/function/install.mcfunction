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
gamerule enderPearlsVanishOnDeath true
gamerule fallDamage false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule maxCommandChainLength 2147483647

scoreboard objectives add lobby dummy {"text": "監控圍城 II", "color": "blue",bold:1b}
scoreboard objectives add info_monitor dummy {"text": "監控者資訊", "color": "gold",bold:1b}
scoreboard objectives add info_survivor dummy {"text": "求生者資訊", "color": "gold",bold:1b}
scoreboard objectives add edit dummy {"text": "編輯中", "color": "dark_aqua"}
scoreboard objectives add system dummy "隱藏資訊"
scoreboard objectives add money dummy {"text":"💲 錢 💲","color":"green"}
scoreboard objectives add constant dummy
scoreboard objectives add xp dummy
scoreboard objectives add leave custom:leave_game

#生命資訊
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add food food
scoreboard objectives add stamina dummy "體力值"

#分數
scoreboard objectives add score dummy "貢獻總分"
scoreboard objectives add death_score dummy "死亡貢獻分數"
scoreboard objectives add damage_score dummy "受傷貢獻分數"
scoreboard objectives add kill_score dummy "殺怪分數"
scoreboard objectives add end dummy {"text": "分數", "color": "green",bold:1b}

#統計
scoreboard objectives add st_fall dummy "倒地次數"
scoreboard objectives add st_death dummy "死亡次數"
scoreboard objectives add st_damage dummy "受傷量"
scoreboard objectives add st_kill dummy "擊殺數"
scoreboard objectives add st_save dummy "救援數"

#戰鬥
scoreboard objectives add kill totalKillCount
scoreboard objectives add death deathCount
scoreboard objectives add damage custom:damage_taken

#遠程武器
scoreboard objectives add extinguisher dummy
scoreboard objectives add flamethrower dummy
scoreboard objectives add reload_time dummy
scoreboard objectives add reload dummy
scoreboard objectives add gun_cooldown dummy

#電箱
scoreboard objectives add box_operation dummy

#升級台
scoreboard objectives add upgrade_operate dummy

#召唤
scoreboard objectives add summon_number dummy "初始編號"
scoreboard objectives add summon_count dummy "召喚數量"
scoreboard objectives add summon_monster dummy "怪物編號"
scoreboard objectives add summon_operate dummy "操作終界箱"
scoreboard objectives add summon_power dummy "召喚電力"
scoreboard objectives add summon_cooldown dummy "冷卻"

#死亡
scoreboard objectives add revive_time dummy "復活時間"
scoreboard objectives add death_time dummy "死亡時間"
scoreboard objectives add uuid0 dummy "UUID[0]"
scoreboard objectives add uuid0_match dummy "儲存對象的UUID[0]"

#捕獸夾
scoreboard objectives add bear_trap dummy "捕獸夾"
scoreboard objectives add jump_break custom:jump "跳躍掙脫"
scoreboard objectives add bear_trap_release dummy "掙脫"

#錘子
scoreboard objectives add hammer dummy "錘子"
scoreboard objectives add hammer_hold dummy

#開鎖器
scoreboard objectives add unlock_progess dummy "開鎖進度"
scoreboard objectives add unlock_slot dummy "開鎖欄位"
scoreboard objectives add selected_slot dummy

#骨折與治療
scoreboard objectives add fracture custom:fall_one_cm "骨折"
scoreboard objectives add medical_cooldown dummy

#監視器
scoreboard objectives add camera dummy "監視器"
scoreboard objectives add camera_cooldown dummy
scoreboard objectives add camera_interface trigger "使用監視器"
scoreboard objectives add camera_level dummy "監視器等級"
scoreboard objectives add level dummy "電力"
scoreboard objectives add cost_time dummy
scoreboard objectives add heat dummy "過熱"
scoreboard objectives add trap dummy
scoreboard objectives add trap_cooldown dummy
scoreboard objectives add photo dummy
scoreboard objectives add photo_cooldown dummy

#機關
scoreboard objectives add poison_point dummy

#收容櫃
scoreboard objectives add contain_temperature dummy
scoreboard objectives add contain_health dummy
scoreboard objectives add contain_food dummy

#發電機
scoreboard objectives add power dummy
scoreboard objectives add power_level dummy
scoreboard objectives add light_game dummy
scoreboard objectives add puzzle_game dummy
scoreboard objectives add netwalk_game dummy

#商店
scoreboard objectives add shop dummy
scoreboard objectives add shop_operate dummy
scoreboard objectives add open_ender_chest custom:open_enderchest

#修理
scoreboard objectives add jump_fix custom:jump "跳躍修理"
scoreboard objectives add fix_progress dummy "修理進度"
scoreboard objectives add fix_slot dummy "修理欄位"
scoreboard objectives add fix_time dummy "檢定時間"

#玻璃裂開
scoreboard objectives add glass_break dummy

#怪物
scoreboard objectives add monster_slime dummy
scoreboard objectives add monster_golem dummy

#人體變形
scoreboard objectives add morph dummy
scoreboard objectives add morph_skill_1 dummy
scoreboard objectives add morph_skill_2 dummy
scoreboard objectives add morph_skill_2_duration dummy
scoreboard objectives add use_ender_pearl used:ender_pearl

scoreboard objectives add boss_health dummy "Boss血量"
scoreboard objectives add boss_time dummy "Boss時間"
scoreboard objectives add boss_status dummy "Boss狀態"

#隊伍
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


#記分板設定
scoreboard players set 更新 system 1
scoreboard players set #2 constant 2
scoreboard players set #20 constant 20
scoreboard players set #60 constant 60
scoreboard players set #100 constant 100
scoreboard players set #200 constant 200

bossbar add jk2:boss "BOSS血條"
bossbar add jk2:time "遊戲時間"
bossbar add jk2:prepare "準備時間"

bossbar set jk2:time style notched_10

bossbar set jk2:boss color red
bossbar set jk2:time color yellow
bossbar set jk2:prepare color purple

bossbar set jk2:time max 1500
bossbar set jk2:prepare max 180

#可供變形的怪物 以及技能冷卻
data modify storage jk2:data root.morph.monsters set value ["zombie", "skeleton", "spider", "creeper", "enderman", "evoker", "blaze", "golem"]
data modify storage jk2:data root.morph.cooldown set value \
{\
	zombie: {1: 120, 2: 280},\
	skeleton: {1: 60, 2: 200},\
	spider: {1: 120, 2: 200},\
	creeper: {1: 200, 2: 260},\
	enderman: {1: 120, 2: 200},\
	evoker: {1: 140, 2: 220},\
	blaze: {1: 120, 2: 280},\
	golem: {1: 140, 2: 240}\
}

#方向常數 上右下左
data modify storage jk2:data root.monitor.netwalk_game.directions_vec2arr set value \
[\
	{row: -1, column: 0},\
	{row: 0, column: 1},\
	{row: 1, column: 0},\
	{row: 0, column: -1}\
]

tellraw @a ["◎ ", {"text": "資料包", "color": "gold"}, "已更新至", {"text": "最新版", "color": "gold"}]