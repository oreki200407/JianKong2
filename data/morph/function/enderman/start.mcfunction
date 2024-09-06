###################################################
# 變形成終界使者開始
# 
# Name   : start.mcfunction
# Path   : morph:enderman/
# As     : 變形成終界使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {profile: {name: "MHF_Enderman", id: [I; 1090499442, 318129784, -1275977354, -1084826293], properties: [{name: "textures", value: "ewogICJ0aW1lc3RhbXAiIDogMTcyNTYwNDg0MjA5NSwKICAicHJvZmlsZUlkIiA6ICI0MGZmYjM3MjEyZjY0Njc4YjNmMjIxNzZiZjU2ZGQ0YiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfRW5kZXJtYW4iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWIwOWEzNzUyNTEwZTkxNGIwYmRjOTA5NmIzOTJiYjM1OWY3YThlOGE5NTY2YTAyZTdmNjZmYWZmOGQ2Zjg5ZSIKICAgIH0KICB9Cn0="}]}}}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.enderman"}]