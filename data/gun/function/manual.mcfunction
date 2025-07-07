###################################################
# 副手拿槍時裝彈
# 
# Name   : manual.mcfunction
# Path   : gun:
# As     : 副手拿槍的玩家
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#012e10ad-0000-0000-0000-000000000000
summon item_display ~ ~ ~ {UUID: [I; 19796141, 0, 0, 0]}
item replace entity 12e10ad-0-0-0-0 contents from entity @s weapon
item replace entity @s weapon from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity 12e10ad-0-0-0-0 contents
kill 12e10ad-0-0-0-0

execute if items entity @s weapon golden_axe[item_name="手槍"] run return run function gun:pistol/reloading
execute if items entity @s weapon golden_axe[item_name="散彈槍"] run return run function gun:shotgun/reloading
execute if items entity @s weapon golden_axe[item_name="衝鋒槍"] run return run function gun:smg/reloading