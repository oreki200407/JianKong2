###################################################
# 電箱點位讀取名字
# 
# Name   : read_name.mcfunction
# Path   : edit:box_point/
# As     : 電箱點位盔甲座
# At     : As
# Loop   : 否
# Author : oreki20
###################################################

#如果前面有就不取後面了
execute if data block ~ ~1 ~ front_text.messages[0] run return run data modify entity @s CustomName set from block ~ ~1 ~ front_text.messages[0]
data modify entity @s CustomName set from block ~ ~1 ~ back_text.messages[0]