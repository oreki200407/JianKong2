###################################################
# 監視器爆炸後玩家回去
# 
# Name   : camera_explode.mcfunction
# Path   : monitor:observe/player/
# As     : 看著爆炸監視器的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

tellraw @s ["◎ 監視器", {score: {name: "@s", objective: "camera"}}, "因為過熱而", {text: "爆炸", color: "gold"}]
execute at @s run playsound entity.generic.explode ambient @s
function monitor:observe/player/back/root