###################################################
# 監視器
# 
# Name   : tick.mcfunction
# Path   : monitor:observe/camera/
# As     : 監視器
# At     : 世界重生點
# Loop   : 是
# Author : Alex_Cai
###################################################

#有幾個人正在使用此監視器
scoreboard players operation #camera_id camera = @s camera
execute store result score #using_me camera if entity @a[tag=using_camera, predicate=monitor:is_using_me]

#沒有人就漸漸冷卻並結束
execute if score #using_me camera matches 0 run return run scoreboard players remove @s[scores={heat=1..}] heat 1

title @a[tag=using_camera, predicate=monitor:is_using_me] actionbar [{text:"監視器熱度：",color:gold,bold:1b},{"score":{"name":"@s","objective":"heat"}},{text:"     投放次數：",color:gold,bold:1b},{"score":{"name":"#trap","objective":"trap_cooldown"}}]

#在增加前先儲存原本的數值
scoreboard players operation #previous heat = @s heat
#增加熱度
scoreboard players operation @s heat += #using_me camera
#檢查熱度
function monitor:observe/camera/level/check_heat

#消耗電力
scoreboard players operation @s cost_time += #using_me camera
function monitor:observe/camera/level/check_electricity