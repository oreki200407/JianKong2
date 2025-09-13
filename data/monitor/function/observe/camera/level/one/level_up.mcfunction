###################################################
# 等級一升級到等級二的升級函數
# 
# Name   : level_up.mcfunction
# Path   : monitor:observe/camera/level/one/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute unless score 電力 info_monitor matches 40.. run return run tellraw @s ["◎ 電力不足, 無法升級", {text: "監視器", color: "gold"}]
setblock ~ ~ ~ birch_wall_sign[facing=east]{front_text: {messages: [{text: "升級監視器", bold: true}, {text: "目前等級：2", bold: true}, {text: "花費：80電力", bold: true, click_event: {action: "run_command", command: "function monitor:observe/camera/level/two/level_up"}}, ""]}, is_waxed: true} destroy
playsound entity.player.levelup master @a[team=monitor]
scoreboard players remove 電力 info_monitor 40
scoreboard players set @e[type=area_effect_cloud, tag=camera] camera_level 2