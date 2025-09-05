###################################################
# 執行給予監視器
# 
# Name   : run.mcfunction
# Path   : monitor:observe/player/give/
# As     : 監控者
# At     : 世界重生點
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

$execute unless entity @e[type=area_effect_cloud, tag=camera, scores={camera=$(number)}] run return fail

$execute store success score #has_camera camera run clear @s white_dye[item_name="監視器$(number)"] 0
$execute if score #has_camera camera matches 0 run give @s white_dye[item_name="監視器$(number)", custom_model_data={floats: [$(number)]}, consumable={consume_seconds: 99999}]