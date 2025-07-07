###################################################
# 等級二升級到等級三的升級函數
# 
# Name   : level_up.mcfunction
# Path   : monitor:observe/camera/level/two/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

execute unless score 電力 info_monitor matches 80.. run return run tellraw @s ["◎ 電力不足, 無法升級", {text: "監視器", color: "gold"}]

setblock ~ ~ ~ birch_wall_sign[facing=east]{front_text: {messages: ["", {text: "目前等級：3", bold: true}, {text: "監視器已經最高級", bold: true}, ""]}, is_waxed: true} destroy
playsound entity.player.levelup ambient @a[team=monitor]
scoreboard players remove 電力 info_monitor 80
scoreboard players set @e[tag=camera] camera_level 3