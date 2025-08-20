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

$execute store success score #has_camera camera run clear @s white_dye[item_name="監視器$(number)"]
$execute if score #has_camera camera matches 0 run give @s white_dye[item_name="監視器$(number)", custom_model_data={floats: [$(number)]}, consumable={consume_seconds: 99999}]