gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
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
gamerule maxCommandChainLength 2147483647
gamerule mobGriefing false
gamerule projectilesCanBreakBlocks false
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule snowAccumulationHeight 0
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplodes false

scoreboard objectives add lobby dummy {"text": "監控圍城 II", "color": "blue",bold:1b}
scoreboard objectives add info_monitor dummy {"text": "監控者資訊", "color": "gold",bold:1b}
scoreboard objectives add info_survivor dummy {"text": "求生者資訊", "color": "gold",bold:1b}
scoreboard objectives add edit dummy {"text": "編輯中", "color": "dark_aqua"}
scoreboard objectives add system dummy "隱藏資訊"
scoreboard objectives add constant dummy
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

#經驗值
scoreboard objectives add xp dummy
scoreboard objectives add xp_kill totalKillCount

#戰鬥
scoreboard objectives add kill totalKillCount
scoreboard objectives add death deathCount
scoreboard objectives add damage custom:damage_taken

#遠程武器
scoreboard objectives add extinguisher dummy
scoreboard objectives add flamethrower dummy
scoreboard objectives add flamethrower_attacker_uuid0 dummy
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
scoreboard objectives add summon_shuffle dummy "刷新冷卻"

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

#機關
scoreboard objectives add poison_point dummy

#收容櫃
scoreboard objectives add contain_temperature dummy
scoreboard objectives add contain_health dummy
scoreboard objectives add contain_food dummy
scoreboard objectives add contain_second dummy
scoreboard objectives add contain_freeze trigger

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
scoreboard objectives add money dummy {"text":"💲 錢 💲","color":"green"}

#修理
scoreboard objectives add jump_fix custom:jump "跳躍修理"
scoreboard objectives add fix_progress dummy "修理進度"
scoreboard objectives add fix_slot dummy "修理欄位"
scoreboard objectives add fix_time dummy "檢定時間"

#玻璃裂開
scoreboard objectives add glass_break dummy

#怪物
scoreboard objectives add monster_delay dummy
scoreboard objectives add monster_slime dummy
scoreboard objectives add monster_golem dummy

#人體變形
scoreboard objectives add morph dummy
scoreboard objectives add morph_skill_1 dummy
scoreboard objectives add morph_skill_2 dummy
scoreboard objectives add morph_skill_2_duration dummy
scoreboard objectives add use_ender_pearl used:ender_pearl
scoreboard objectives add use_firework used:firework_rocket
scoreboard objectives add use_wind_charge used:wind_charge

scoreboard objectives add boss_health dummy "Boss血量"
scoreboard objectives add boss_time dummy "Boss時間"
scoreboard objectives add boss_status dummy "Boss狀態"

#隊伍
team add survivor "[求生者]"
team add monitor "[監控者]"
team add spec "[旁觀者]"

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
scoreboard players set 更新 system 3
scoreboard players set #2 constant 2
scoreboard players set #10 constant 10
scoreboard players set #20 constant 20
scoreboard players set #60 constant 60
scoreboard players set #100 constant 100

scoreboard players set #power1 power 0
scoreboard players set #power2 power 0
scoreboard players set #power3 power 0
scoreboard players set #box fix_progress 0
scoreboard players set #difficulty morph 2

bossbar add jk2:boss "BOSS血條"
bossbar add jk2:time "遊戲時間"
bossbar add jk2:prepare "準備時間"
bossbar add jk2:distance "玩家距離"

bossbar set jk2:time style notched_10

bossbar set jk2:boss color red
bossbar set jk2:time color yellow
bossbar set jk2:prepare color purple
bossbar set jk2:distance color blue

bossbar set jk2:time max 1500
bossbar set jk2:prepare max 180

#可供變形的怪物 以及技能冷卻(單位是tick)
data modify storage jk2:data root.morph.monsters set value ["zombie", "skeleton", "spider", "creeper", "enderman", "evoker", "blaze", "breeze", "golem", "phantom"]
data modify storage jk2:data root.morph.cooldown set value \
{\
	zombie:   [I; 0, 120, 280],\
	skeleton: [I; 0,  60, 200],\
	spider:   [I; 0, 120, 200],\
	creeper:  [I; 0, 200, 260],\
	enderman: [I; 0, 120, 200],\
	evoker:   [I; 0, 140, 220],\
	blaze:    [I; 0, 120, 280],\
	breeze:   [I; 0, 120, 200],\
	golem:    [I; 0, 140, 240],\
	warden:   [I; 0, 280, 200],\
	phantom:  [I; 0, 200, 200]\
}

#方向常數 上右下左
data modify storage jk2:data root.monitor.netwalk_game.directions_vec2arr set value \
[\
	{row: -1, column: 0},\
	{row: 0, column: 1},\
	{row: 1, column: 0},\
	{row: 0, column: -1}\
]

#書本
execute at @e[type=marker, tag=map_info, limit=1] run data merge block ~ ~ ~ {Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{pages: [\
[\
	{text: "", font: "uniform"},\
	{text: "遊戲介紹\n", bold: true},\
	"玩家將分為兩個陣營：", {text: "求生者", color: "red", bold: true}, "與", {text: "監控者", color: "blue", bold: true}, "。\n",\
	"一場遊戲共分為", {text: "上下兩回合", bold: true}, "，下半場雙方", {text: "交換陣營", bold: true}, "。\n\n",\
	{text: "求生者目標", color: "red", bold: true}, "：利用手中的物資與武器存活25分鐘，同時擊退怪物與應對各種危機。\n",\
	{text: "監控者目標", color: "blue", bold: true}, "：部署陷阱、召喚怪物，想盡辦法讓求生者倒地或死亡。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "分數\n", bold: true},\
	"每位求生者都擁有貢獻分數，計分方式如下：\n",\
	"●倒地：監控者+50分\n",\
	"●死亡：監控者+100分\n",\
	"●擊殺怪物：監控者-1分\n",\
	"●遊戲結束時，求生者所承受的總傷害將加成並換算為分數（傷害量×5%）\n\n",\
	"遊戲結束時，總分較高的隊伍獲得勝利。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "準備階段\n", bold: true},\
	"遊戲一開始有", {text: "三分鐘", bold: true}, "準備時間，雙方要在時間內完成以下事項：\n\n",\
	{text: "求生者", color: "red", bold: true}, "：前往商店購買裝備或探索地圖熟悉地形。\n",\
	"每種槍枝每位求生者僅能各購買一把。準備階段結束後，商店將永久關閉。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "監控者", color: "blue", bold: true}, "：安裝六台監視器。\n",\
	"點擊對話框中的安裝按鈕，即可在當前位置放置監視器，安裝後便無法移動。準備階段結束後，將無法安裝監視器。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "發電\n", color: "blue", bold: true},\
	"在監控方，", {text: "電力", bold: true}, "是關鍵資源，最大儲存上限為", {text: "300", bold: true}, "。\n",\
	"監控者擁有三台", {text: "發電機", bold: true}, "，可消耗電力升級，共分為", {text: "三個等級", bold: true}, "。等級越高，發電所產出的電力越多。\n",\
	"可選擇消耗", {text: "130電力", bold: true}, "升級為", {text: "全自動發電機", bold: true}, "，無需人工操作也能穩定產出電力。\n",\
	{text: "注意", color: "gold", bold: true}, "：在發電過程中，發電機有機率發生故障。監控者可", {text: "手動修復", bold: true}, "，或消耗", {text: "50電力", bold: true}, "自動修復。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "監視器\n", color: "blue", bold: true},\
	"遊戲開始後，監控者可透過", {text: "監視器", bold: true}, "即時查看求生者的行動。", {text: "任意移動", bold: true}, "即可退出監視器畫面。\n",\
	"使用監視器會持續消耗", {text: "電力", bold: true}, "，耗盡後將暫時無法使用。\n",\
	"長時間使用會導致過熱並冒煙，多人同時使用會大幅升溫。閒置時會逐漸冷卻。"\
],\
[\
	{text: "過熱冒煙狀態共分為", font: "uniform"}, {text: "三個等級", bold: true}, "，若超越", {text: "三級冒煙", bold: true}, "，該台監視器將會", {text: "爆炸，", bold: true}, "直到遊戲結束都無法再次使用。\n",\
	"監視器共有", {text: "三個等級", bold: true}, "，可消耗電力進行升級。等級越高，監視器消耗的電力越少，可承受的過熱時間越長，發生爆炸的風險越低。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "怪物召喚\n", color: "blue", bold: true},\
	"監控者可召喚", {text: "七種不同怪物", bold: true}, "，依難度分為：三種簡單怪物、兩種普通怪物、兩種困難怪物。\n",\
	"雙方會獲得相同的怪物，在遊戲開始時會隨機抽選。若對當前的怪物不滿意，可花費20電力刷新一種怪物。\n",\
	"遊戲開始時會解鎖前三種怪物，之後每經過5分鐘，將依序解鎖一種新的怪物。"\
],\
[\
	{text: "玩家可選擇召喚的怪物數量。召喚後會進入", font: "uniform"}, {text: "冷卻時間", bold: true}, "，召喚數量越多，冷卻時間越長。\n",\
	"召喚方式分為兩種：\n",\
	"●", {text: "自動召喚", bold: true}, "：怪物將會隨機出現在求生者周圍地區，無需手動操作。\n",\
	"●", {text: "手動召喚", bold: true}, "：監控者可透過監視器畫面，", {keybind: "key.use"}, "點擊指定位置召喚怪物。每召喚一隻怪物將消耗2電力。\n",\
	{text: "注意", color: "gold", bold: true}, "：每40秒會在求生者周圍", {text: "自然生成怪物", bold: true}, "。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "收容生物\n", color: "blue", bold: true},\
	"監控者擁有五種收容生物：", {translate: "entity.minecraft.villager"}, "、", {translate: "entity.minecraft.zombie"}, "、", {translate: "entity.minecraft.skeleton"}, "、", {translate: "entity.minecraft.spider"}, "、", {translate: "entity.minecraft.creeper"}, "。\n",\
	"每個生物擁有三項狀態：體溫、飽食度、血量。\n",\
	"若體溫或飽食度過高或過低，都會導致", {text: "血量", bold: true}, "下降。玩家需透過調節室內溫度與餵食，維持牠們的穩定狀態。\n",\
	"若生物血量降至0則會", {text: "死亡", bold: true}, "。可消耗30電力將其復活。"\
],\
[\
	{text: "在遊戲過程中，生物有機率逃離", font: "uniform"}, {text: "收容櫃", bold: true}, "。若未將其重新關回收容櫃中，將無法獲得材料資源。\n",\
	"生物每1分鐘會自動產出對應的", {text: "材料", bold: true}, "，收集到的材料可用來購買各式", {text: "陷阱", bold: true}, "。\n",\
	"監控者可透過", {text: "監視器", bold: true}, "投放陷阱至地圖上的指定位置，以阻擋或牽制求生者。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "機關\n", color: "blue", bold: true},\
	"遊戲中設有六種機關，監控者可透過消耗", {text: "電力", bold: true}, "啟動，對求生者造成干擾或限制。\n",\
	"可用機關如下：\n",\
	"●關閉電箱：消耗50電力\n",\
	"●鐵門上鎖：消耗50電力\n",\
	"●釋放酸雨：消耗60電力\n",\
	"●釋放毒氣：消耗70電力\n",\
	"●禁止奔跑：消耗80電力\n",\
	"●更換電箱：消耗80電力\n",\
	"啟動機關後將會進入", {text: "冷卻時間", bold: true}, "，在冷卻期間內將無法再次使用。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "人體變型\n", color: "blue", bold: true},\
	"人體變型功能可消耗50電力，讓監控者暫時化身為怪物，進行直接干擾與攻擊。\n",\
	"變型成功後，玩家將會被傳送至求生者的聚集區域。每隻變型怪物皆擁有兩個", {text: "主動技能", bold: true}, "和一個", {text: "被動技能", bold: true}, "。\n",\
	"在遊戲最後5分鐘內，人體變型裝置將", {text: "免費開放", bold: true}, "，所有監控者皆可無限制變型。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "裝備武器\n", color: "red", bold: true},\
	"遊戲開始時，所有求生者將獲得一套", {text: "皮革裝備", bold: true}, "。\n",\
	"求生者可透過強化台升級武器與防具。強化需消耗", {text: "經驗值", bold: true}, "，可透過擊殺怪物獲得。\n",\
	"商店中提供五種", {text: "近戰武器", bold: true}, "選購，每種武器具備不同攻擊傷害與攻擊速度。\n",\
	"武器的攻擊力會隨著耐久度下降而降低，若要修復武器，副手拿著它、主手拿著", {text: "磨刀石", bold: true}, "，按著", {keybind: "key.use"}, "即可進行修復。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "倒地\n", color: "red", bold: true},\
	"當求生者血量耗盡時，會進入", {text: "倒地狀態", bold: true}, "，並增加監控者50分。\n",\
	"其他求生者可在倒地隊友旁長按", {keybind: "key.sneak", bold: true}, "救援。\n",\
	"救援後，求生者將獲得10秒", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.regeneration"}, {translate: "potion.potency.1"}], bold: true}, "和", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.resistance"}, {translate: "potion.potency.4"}], bold: true}, "效果。\n",\
	"若60秒內無人救援，該求生者將會死亡，並增加監控者100分。\n",\
	"死亡後，求生者將獲得30秒", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.strength"}, "I"], bold: true}, "、", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.resistance"}, {translate: "potion.potency.4"}], bold: true}, "、", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.speed"}, {translate: "potion.potency.1"}], bold: true}, "效果。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "電箱\n", color: "red", bold: true},\
	"地圖中設有電箱，內含八種功能，可消耗經驗值為求生者提供關鍵支援。\n",\
	"電箱位置會在遊戲過程中不定時變更，需隨時留意地圖上的更新資訊。\n",\
	"若電箱被監控者關閉，需修復後才能再次使用。\n",\
	"反覆點擊", {keybind: "key.jump"}, "進行修復。過程中將觸發", {text: "快速反應事件", bold: true}, "（QTE），玩家需在限時內按下指定按鍵。若", {text: "QTE", bold: true}, "失敗，則修復進度倒退。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "骨折\n", color: "red", bold: true},\
	"當求生者從高處跌落時，將會獲得永久性", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.slowness"}, {translate: "potion.potency.2"}], bold: true}, "效果，影響移動速度。\n",\
	"骨折可透過使用", {text: "夾板", bold: true}, "進行治療，成功治療後將消除", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.slowness"}, {translate: "potion.potency.2"}]}, "效果。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "捕獸夾\n", color: "red", bold: true},\
	"捕獸夾是一種陷阱，能有效限制敵方行動。\n",\
	"當", {text: "怪物", bold: true}, "踩到捕獸夾時，將會被固定在原地", {text: "8秒", bold: true}, "，無法移動。\n",\
	"當", {text: "玩家", bold: true}, "踩到捕獸夾時，將會被固定在原地。被捕獸夾困住的玩家，可反覆點擊", {keybind: "key.jump", bold: true}, "進行掙脫操作。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "窗戶和門\n", color: "red", bold: true},\
	"在遊戲中，所有怪物皆可破壞窗戶與開門。\n",\
	"求生者可在商店購買", {text: "錘子", bold: true}, "與", {text: "木板", bold: true}, "，用來加固窗戶。完成加固後，該窗戶將無法被怪物破壞。\n",\
	"在遊戲中，", {text: "監控者", bold: true}, "可能會鎖上所有門。求生者可在商店購買", {text: "鑰匙", bold: true}, "直接解鎖鐵門，或使用", {text: "開鎖器", bold: true}, "進行解鎖。在", {translate: "block.minecraft.iron_door"}, "旁手持開鎖器點擊", {keybind: "key.use"}, "，接著持續", {text: "上下滾動", bold: true}, "滑鼠滾輪。"\
]], author: "監控局局長", title: "遊戲介紹"}}}}

execute at @e[type=marker, tag=monster_info, limit=1] run data merge block ~ ~ ~ {Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{pages: [\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.zombie", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●移動速度快\n",\
	"●較弱的視力\n",\
	"●以量取勝\n\n",\
	{"translate":"entity.minecraft.creeper", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●移動速度慢\n",\
	"●血量高\n",\
	"●爆炸時間長"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.skeleton", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●使用弓箭\n",\
	"●移動速度快\n",\
	"●較強的視力\n\n",\
	{"translate":"entity.minecraft.slime", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●被打到會緩速\n",\
	"●移動速度慢\n",\
	"●死後會分裂"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.pufferfish", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●尖刺效果\n",\
	"●被打到會中毒\n",\
	"●容易被擊退\n\n",\
	{"translate":"entity.minecraft.pig", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●強大的擊退力\n",\
	"●血量高\n",\
	"●不易被擊退"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.wolf", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●血量低\n",\
	"●死後會化為狼人\n",\
	"●狼人攻擊力提高\n\n",\
	{"translate":"entity.minecraft.enderman", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●移動速度快\n",\
	"●受傷會瞬移\n",\
	"●被打到會轉動視角\n"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.guardian", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●雷射攻擊\n",\
	"●尖刺效果\n",\
	"●有腳行走\n\n",\
	{"translate":"entity.minecraft.vindicator", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●移動速度快\n",\
	"●攻擊力高\n",\
	"●破窗時不受木板影響"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.iron_golem", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●移動速度慢\n",\
	"●血量高\n",\
	"●被打到會被擊飛\n\n",\
	{"translate":"entity.minecraft.witch", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●藥水攻擊\n",\
	"●血量高\n",\
	"●靠近的玩家會虛弱"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.spider", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●會爬墻\n",\
	"●受傷會召喚洞穴蜘蛛\n",\
	"●被打到會被蜘蛛網纏著\n\n",\
	{"translate":"entity.minecraft.strider", bold: true},"\n",\
	"等級：",{"text":"中\n","color":"gold"},\
	"特點：\n",\
	"●移動速度快\n",\
	"●靠近的玩家會中毒\n",\
	"●死後會放火"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.blaze", bold: true},"\n",\
	"等級：",{"text":"高\n","color":"red"},\
	"特點：\n",\
	"●使用火焰弓箭\n",\
	"●無法預測的飛行\n",\
	"●攻擊力高\n\n",\
	{"translate":"entity.minecraft.evoker", bold: true},"\n",\
	"等級：",{"text":"高\n","color":"red"},\
	"特點：\n",\
	"●擁有不死圖騰\n",\
	"●召喚惱鬼\n",\
	"●召喚尖牙"\
],\
[\
	{text: "", font: "uniform"},\
	{"translate":"entity.minecraft.wither_skeleton", bold: true},"\n",\
	"等級：",{"text":"高\n","color":"red"},\
	"特點：\n",\
	"●兩格高\n",\
	"●被打到會凋零\n",\
	"●死後會滯留凋零效果"\
]],author:"監控局局長",title:"怪物介紹"}}}}

tag @e[tag=tutorial_power1] remove puzzle_game
tag @e[tag=tutorial_power2] remove netwalk_game
tag @e[tag=tutorial_power3] remove light_game

tellraw @a ["◎ ", {"text": "資料包", "color": "gold"}, "已更新至", {"text": "最新版", "color": "gold"}]