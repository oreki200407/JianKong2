###################################################
# 變形成喚魔者開始
# 
# Name   : start.mcfunction
# Path   : morph:evoker/
# As     : 變形成喚魔者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {profile: {name: "MHF_Evoker", id: [I; 1546249505, 1214399928, -2132893149, 405750015], properties: [{name: "textures", value: "ewogICJ0aW1lc3RhbXAiIDogMTcyNTYxODU0MjA5MiwKICAicHJvZmlsZUlkIiA6ICI1YzI5ZTUyMTQ4NjI0NWI4ODBkZWEyMjMxODJmNDBmZiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfRXZva2VyIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzgwNmFjMDJmZDlkYWM5NjZiN2U1ODA2NzM2YjZmZWI5MGUyZjNiMDU3Nzk2OWU2NzMyOTFiODMwN2MxZWY4ZTUiCiAgICB9CiAgfQp9"}]}}}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.evoker"}]
tag @s add evoker