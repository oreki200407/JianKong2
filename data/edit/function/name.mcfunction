###################################################
# 電箱點位結束編輯
# 
# Name   : exit.mcfunction
# Path   : edit:name/
# As     : 電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20, Alex_Cai
###################################################

execute unless data block ~ ~1 ~ front_text{messages:[""]} run data modify entity @s CustomName set from block ~ ~1 ~ front_text.messages[0]
execute unless data block ~ ~1 ~ back_text{messages:[""]} run data modify entity @s CustomName set from block ~ ~1 ~ back_text.messages[0]
#清除告示牌
setblock ~ ~1 ~ air