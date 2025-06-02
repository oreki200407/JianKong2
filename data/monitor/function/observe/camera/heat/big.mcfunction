###################################################
# 大冒煙
# 
# Name   : big.mcfunction
# Path   : monitor:observe/camera/heat/
# As     : 監視器
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

title @s title {"text":"⚠","color":red}
title @s subtitle {"text":"監視器已開始三級冒煙","color":red}
tellraw @a[tag=using_camera, predicate=monitor:is_using_me] ["◎ 監視器", {"score": {"name": "@s", "objective": "camera"}}, "已開始", {"text": "三級冒煙", "color":"gold"}]
playsound block.fire.extinguish ambient @s