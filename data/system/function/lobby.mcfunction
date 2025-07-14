kill @e[type=marker,tag=lobby]
kill @e[type=marker,tag=lobby_spawn]
kill @e[tag=lobby_text]
forceload add ~ ~
setworldspawn ~6 ~ ~5

execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby"]}
place template game:lobby ~-10 ~-1 ~-10

execute at @e[type=marker, tag=map_info, limit=1] run setblock ~ ~ ~ lectern[has_book=true]{Book: {id: "written_book", components:{written_book_content: {pages: [\
[\
	{text: "", font: "uniform"},\
	{text: "遊戲介紹\n", bold: true},\
	"玩家將被分為兩個陣營：", {text: "求生者", color: "red", bold: true}, "與", {text: "監控者", color: "blue", bold: true}, "。\n",\
	"一場遊戲共分為", {text: "上下兩回合", bold: true}, "，下半場將會雙方 ", {text: "交換陣營", bold: true}, "。\n",\
	{text: "求生者目標", color: "red", bold: true}, "：利用手中的物資與武器，存活25分鐘，同時擊退怪物與應對各種危機。\n",\
	{text: "監控者目標", color: "blue", bold: true}, "：部署陷阱、召喚怪物，想盡辦法讓求生者倒地或死亡。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "分數\n", bold: true},\
	"每位玩家擁有獨立的個人分數，計分方式如下：\n",\
	"●求生者倒地一次：+50分\n",\
	"●求生者死亡一次：+70分\n",\
	"●擊殺怪物：-1分\n",\
	"●遊戲結束時，求生者所承受的總傷害將換算為個人分數的加成（傷害量×5%）\n",\
	"遊戲結束時，所有隊員的分數將總和到 ", {text: "敵方分數", bold: true}, "，總分較高的隊伍獲得勝利。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "準備階段\n", bold: true},\
	"遊戲一開始有 ", {text: "三分鐘", bold: true}, " 的準備時間。雙方要在準備時間內完成以下事項：\n",\
	{text: "求生者", bold: true}, "：前往商店購買裝備或探索地圖熟悉地形。每位求生者僅能購買一把手槍、一把散彈槍、一把衝鋒槍。準備階段結束後，商店將永久關閉。\n",\
	{text: "監控者", bold: true}, "：安裝六台監視器。點擊對話框中的安裝按鈕，即可在當前位置放置監視器。準備階段結束後，將無法安裝監視器。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "發電\n", color: "blue", bold: true},\
	"在監控方，", {text: "電力", bold: true}, "是關鍵資源，最大儲存上限為", {text: "300", bold: true}, " 。\n",\
	"監控者擁有三台", {text: "發電機", bold: true}, "，每台發電機皆可升級，共分為", {text: "三個等級", bold: true}, "。每次升級需消耗電力，等級越高，每次發電所產出的電力越多。\n",\
	"可選擇消耗", {text: "130電力", bold: true}, "升級為", {text: "全自動發電機", bold: true}, "，無需人工操作也能穩定產出電力。\n",\
	{text: "注意", bold: true}, "：在發電過程中，發電機有機率發生故障。監控者可", {text: "手動修復", bold: true}, "，或消耗", {text: "40電力", bold: true}, "自動修復。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "監視器\n", color: "blue", bold: true},\
	"遊戲開始後，監控者可透過", {text: "監視器", bold: true}, "即時查看求生者的行動。", {text: "任意移動", bold: true}, "即可退出監視器畫面。\n",\
	"使用監視器會持續消耗 ", {text: "電力", bold: true}, "，電力耗盡時將無法繼續使用監視功能。\n",\
	"長時間使用監視器會導致過熱並冒煙。多人同時使用監視器時，會大幅加快過熱速度。當監視器未被使用時，將會自動緩慢冷卻。\n",\
	"過熱冒煙狀態共分為", {text: "三個等級", bold: true}, "，若超越", {text: "三級冒煙", bold: true}, "，該台監視器將會", {text: "爆炸，", bold: true}, "該台監視器將無法再次使用直到遊戲結束。"\
],\
[\
	{text: "監視器共有 ", font: "uniform"}, {text: "三個等級", bold: true}, "，可消耗電力進行升級。等級越高，監視器消耗的電力越少，可承受的過熱時間越長，發生爆炸的風險越低。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "怪物召喚\n", color: "blue", bold: true},\
	"監控者可召喚", {text: "七種不同怪物", bold: true}, "，依難度分為：三種簡單怪物、兩種普通怪物、兩種困難怪物。\n",\
	"在遊戲開始時會隨機選擇怪物，雙方會獲得相同的怪物。若對當前的怪物不滿意，可花費10電力刷新一種怪物。\n",\
	"遊戲開始時會解鎖前三種怪物，之後每經過5分鐘，將依序解鎖一種新的怪物。\n",\
	"玩家可選擇召喚的怪物數量。召喚後會進入", {text: "冷卻時間", bold: true}, "，召喚數量越多，冷卻時間越長。"\
],\
[\
	{text: "召喚方式分為兩種：\n", font: "uniform"},\
	"●", {text: "自動召喚", bold: true}, "：怪物將會隨機出現在求生者周圍地區，無需手動操作。\n",\
	"●", {text: "手動召喚", bold: true}, "：監控者可透過監視器畫面，右鍵點擊指定位置召喚怪物。每召喚一隻怪物將消耗 2 電力。\n",\
	{text: "注意", bold: true}, "：每 40 秒 會在求生者周圍", {text: "自然生成怪物", bold: true}, "。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "收容生物\n", color: "blue", bold: true},\
	"監控者將擁有五種收容生物：村民、殭屍、骷髏、蜘蛛、苦力怕。\n",\
	"每個生物擁有三項狀態：體溫、飽食度、血量。\n",\
	"若體溫或飽食度過高或過低，都會導致血量下降。玩家需透過調節室內溫度 與餵食生物 來維持牠們的穩定狀態。\n",\
	"若生物血量降至0將會死亡。可消耗30電力將其復活。"\
],\
[\
	{text: "在遊戲過程中，生物有機率逃離收容櫃。若未將其重新關回收容櫃中，將無法獲得材料資源。\n", font: "uniform"},\
	"生物每1分鐘會自動產出對應的材料，收集到的材料可用來購買各式陷阱。\n",\
	"監控者可透過監視器投放陷阱至地圖上的指定位置，以阻擋或牽制求生者。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "機關\n", color: "blue", bold: true},\
	"遊戲中設有六種機關，可由監控者透過消耗", {text: "電力", bold: true}, "來啟動，對求生者造成干擾或限制。\n",\
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
	"人體變型功能可讓監控者暫時化身為一隻怪物，進行直接干擾與攻擊。變型需消耗50電力。\n",\
	"成功變型後，玩家將會被傳送至求生者的聚集區域。每隻變型怪物皆擁有兩個", {text: "主動技能", bold: true}, "和一個", {text: "被動技能", bold: true}, "。\n",\
	"在遊戲最後5分鐘內，人體變型裝置將", {text: "免費開放", bold: true}, "，所有監控者皆可無限制變型。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "裝備武器\n", color: "red", bold: true},\
	"遊戲開始時，所有求生者將獲得一套", {text: "皮革裝備", bold: true}, "。\n",\
	"求生者可透過強化台來升級武器與防具。強化需消耗", {text: "經驗值", bold: true}, "，經驗值可透過擊殺怪物來獲得。\n",\
	"商店中提供五種", {text: "近戰武器", bold: true}, " 可供選購，每種武器具備不同攻擊傷害與攻速特性。\n",\
	"武器在使用過程中會逐漸消耗耐久度。當耐久度下降時，武器的攻擊力也會隨之降低。\n",\
	"若要修復武器，將", {text: "磨刀石", bold: true}, "放在主手、武器放在副手，按著右鍵即可進行修復。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "倒地\n", color: "red", bold: true},\
	"當求生者的血量耗盡時，將會進入倒地狀態，並等待隊友前來救援。每次倒地將增加50分。\n",\
	"隊友可站在倒地隊友旁，長按蹲下鍵進行救援。\n",\
	"被救援成功後，求生者將獲得10秒回復 II和抗性 V效果。\n",\
	"若60秒內無人救援，該求生者將會進入死亡狀態，並在原地重生。每次死亡將增加70分。\n",\
	"死亡重生後，求生者將獲得30秒力量 I和抗性 V效果。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "電箱\n", color: "red", bold: true},\
	"地圖中設有電箱，內含 八種功能，可為求生者提供關鍵支援。使用電箱需消耗經驗值。\n",\
	"電箱位置會在遊戲過程中不定時變更，需隨時留意地圖上的更新資訊。\n",\
	"若電箱被監控者關閉，需修復後才能再次使用。\n",\
	"反覆點擊空白鍵進行修復操作。修復過程中將觸發 ", {text: "快速反應事件", bold: true}, "（QTE），玩家需在限時內成功按下指定按鍵。若", {text: "QTE", bold: true}, "失敗，修復進度將會倒退。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "骨折\n", color: "red", bold: true},\
	"當求生者從高處跌落時，將會獲得 永久性", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.slowness"}, {translate: "potion.potency.2"}], bold: true}, "效果，影響移動速度。\n",\
	"骨折可透過使用", {text: "夾板", bold: true}, "進行治療，成功治療後將消除", {translate: "potion.withAmplifier", with: [{translate: "effect.minecraft.slowness"}, {translate: "potion.potency.2"}]}, "效果。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "捕獸夾\n", color: "red", bold: true},\
	"捕獸夾是一種陷阱，能有效限制敵方行動。\n",\
	"當", {text: "怪物", bold: true}, "踩到捕獸夾時，將會被固定在原地", {text: "8秒", bold: true}, "，無法移動。\n",\
	"當", {text: "玩家", bold: true}, "踩到捕獸夾時，將會被固定在原地。被捕獸夾困住的玩家，可反覆點擊", {text: "跳躍鍵", bold: true}, "進行掙脫操作。"\
],\
[\
	{text: "", font: "uniform"},\
	{text: "窗戶和門\n", color: "red", bold: true},\
	"在遊戲中，所有怪物皆可破壞窗戶與開門。\n",\
	"求生者可前往商店購買", {text: "錘子", bold: true}, "與", {text: "木板", bold: true}, "，用來加固窗戶。完成加固後，該窗戶將無法被怪物破壞。\n",\
	"在遊戲中，", {text: "監控者", bold: true}, "可能會鎖上所有門。求生者可使用", {text: "開鎖器", bold: true}, "來解鎖鐵門。在鐵門旁手持開鎖器點擊右鍵，接著持續", {text: "上下滾動", bold: true}, "滑鼠滾輪，進行解鎖操作。完成解鎖後，該鐵門將會轉換為木門。"\
]],author:"監控局局長",title:"遊戲介紹", resolved: false}}}} destroy

execute at @e[type=marker, tag=monster_info, limit=1] run setblock ~ ~ ~ lectern[has_book=true]{Book:{id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{pages: [\
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
	{"translate":"entity.minecraft.strider", bold: true},"\n",\
	"等級：",{"text":"低\n","color":"green"},\
	"特點：\n",\
	"●移動速度快\n",\
	"●靠近的玩家會中毒\n",\
	"●死後會放火"\
],\
[\
	{text: "", font: "uniform"},\
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
	"●被打到會被蜘蛛網纏著"\
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
]],author:"監控局局長",title:"怪物介紹"}}}} destroy

function system:install
scoreboard players set #mode system 1
scoreboard objectives setdisplay sidebar edit
difficulty hard
time set day
clear @a
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n◎ ", {text: "大廳", "color":"gold"}, "已生成完畢"]