###################################################
# 放置電箱
# 
# Name   : set.mcfunction
# Path   : box:switch/
# As     : 電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

#更換電箱
setblock ~ ~ ~ dispenser[facing=down]
setblock ~ ~1 ~ ender_chest
function box:use/reset