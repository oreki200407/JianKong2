###################################################
# 電箱點位編輯
# 
# Name   : enter.mcfunction
# Path   : edit:power_point/
# As     : 電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

setblock ~ ~1 ~ oak_sign{back_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]},front_text:{messages:["","↑↑↑↑","請在第一行","輸入電箱名稱"]}}
data modify block ~ ~1 ~ front_text.messages[0] set from entity @s CustomName
data modify block ~ ~1 ~ back_text.messages[0] set from entity @s CustomName