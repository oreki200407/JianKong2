###################################################
# 變形成蜘蛛開始
# 
# Name   : start.mcfunction
# Path   : morph:spider/
# As     : 變形成蜘蛛的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {profile: {name: "MHF_Spider", id: [I; 1523932980, 1102466002, -1674438504, 1013143862], properties: [{name: "textures", value: "ewogICJ0aW1lc3RhbXAiIDogMTc0MzYyNDQxOTMwMCwKICAicHJvZmlsZUlkIiA6ICI1YWQ1NWYzNDQxYjY0YmQyOWMzMjE4OTgzYzYzNTkzNiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfU3BpZGVyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2Y2MWE0OTU0MWE4MzZhYThmNGY3NmUwZDRjYjJmZjA0ODg4YzYyZjk0MTFlYTEwY2JhY2YxZjJhNTQ0MjQyNDAiCiAgICB9CiAgfQp9"}]}}}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.spider"}]