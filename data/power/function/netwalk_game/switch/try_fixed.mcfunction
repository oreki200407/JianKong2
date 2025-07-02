###################################################
# 檢查是否修復成功
# 
# Name   : success.mcfunction
# Path   : power:netwalk_game/switch/
# As     : 發電機標記，tag=netwalk_game
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

#檢查修復結果
function power:netwalk_game/check_win/root

#修復成功
execute unless items block ~ ~ ~ container.* *[custom_data~{pass: false}] unless items block ~1 ~ ~ container.* *[custom_data~{pass: false}] run function power:fixed