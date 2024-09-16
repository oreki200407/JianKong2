###################################################
# 變形成烈焰使者開始
# 
# Name   : start.mcfunction
# Path   : morph:blaze/
# As     : 變形成烈焰使者的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {profile: {name: "MHF_Blaze", id: [I; 1278799121, 1500139476, -1424152845, -2034119764], properties: [{name: "textures", value: "ewogICJ0aW1lc3RhbXAiIDogMTcyNjUwNTMyMjgxMywKICAicHJvZmlsZUlkIiA6ICI0YzM4ZWQxMTU5NmE0ZmQ0YWIxZDI2ZjM4NmMxY2JhYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfQmxhemUiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDA2ZTM0MmY5MGVjNTM4YWFhMTU1MmIyMjRmMjY0YTA0MDg0MDkwMmUxMjZkOTFlY2U2MTM5YWE1YjNjN2NjMyIKICAgIH0KICB9Cn0="}]}}}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.blaze"}]
effect give @s fire_resistance infinite 0 true