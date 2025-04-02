###################################################
# 變形成鐵巨人開始
# 
# Name   : start.mcfunction
# Path   : morph:golem/
# As     : 變形成鐵巨人的玩家
# At     : 世界重生點
# Loop   : 否
# Author : Alex_Cai
###################################################

item modify entity @s armor.head {function: "set_components", components: {"profile":{id:[I;2092362149,-1722859307,-1677964379,-677981666],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkwOTFkNzllYTBmNTllZjdlZjk0ZDdiYmE2ZTVmMTdmMmY3ZDQ1NzJjNDRmOTBmNzZjNDgxOWE3MTQifX19"}]}}}
tellraw @s [{"text": "你變成了"}, {"translate": "entity.minecraft.iron_golem"}]
tag @s add golem