###################################################
# 給予鐵巨人的第一個技能物品
# 
# Name   : give_1.mcfunction
# Path   : morph:golem/skill/
# As     : 變形成鐵巨人的玩家
# At     : 世界重生點
# Loop   : 否
# Author : oreki20
###################################################

give @s raw_iron[item_model=brick,item_name={"text":"震地","color":"gold"},lore=[{"text":"5格內的求生者受到傷害","color":"white","italic":false},{"text":"冷卻7秒","color":"aqua","italic":false}],custom_data={"skill": 1b}, consumable={animation: "none", has_consume_particles: false, consume_seconds: 0.0F, sound: "intentionally_empty"}]