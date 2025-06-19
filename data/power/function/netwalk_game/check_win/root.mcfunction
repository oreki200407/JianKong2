###################################################
# 檢查是否過關
# 
# Name   : root.mcfunction
# Path   : power:netwalk_game/check_win/
# As     : 點擊格子的玩家
# At     : 發電機標記，tag=netwalk_game
# Loop   : 否
# Author : Alex_Cai
###################################################

#重設箱子
item modify block ~ ~ ~ container.2 power:not_pass
item modify block ~ ~ ~ container.3 power:not_pass
item modify block ~ ~ ~ container.4 power:not_pass
item modify block ~ ~ ~ container.5 power:not_pass
item modify block ~ ~ ~ container.6 power:not_pass

item modify block ~ ~ ~ container.11 power:not_pass
item modify block ~ ~ ~ container.12 power:not_pass
item modify block ~ ~ ~ container.13 power:not_pass
item modify block ~ ~ ~ container.14 power:not_pass
item modify block ~ ~ ~ container.15 power:not_pass

item modify block ~ ~ ~ container.20 power:not_pass
item modify block ~ ~ ~ container.21 power:not_pass
item modify block ~ ~ ~ container.22 power:not_pass
item modify block ~ ~ ~ container.23 power:not_pass
item modify block ~ ~ ~ container.24 power:not_pass

item modify block ~1 ~ ~ container.2 power:not_pass
item modify block ~1 ~ ~ container.3 power:not_pass
item modify block ~1 ~ ~ container.4 power:not_pass
item modify block ~1 ~ ~ container.5 power:not_pass
item modify block ~1 ~ ~ container.6 power:not_pass

item modify block ~1 ~ ~ container.11 power:not_pass
item modify block ~1 ~ ~ container.12 power:not_pass
item modify block ~1 ~ ~ container.13 power:not_pass
item modify block ~1 ~ ~ container.14 power:not_pass
item modify block ~1 ~ ~ container.15 power:not_pass

#召喚一個展示實體 避免一直macro
summon item_display ~ ~ ~ {UUID: [I; 0, 0, 0, 94695]}
#參數的堆疊
data modify storage jk2:data root.monitor.netwalk_game.arguments_stack set value []
#參數
data modify storage jk2:data root.monitor.netwalk_game.arguments set value {x_offset: 0, index: 2}
data modify storage jk2:data root.monitor.netwalk_game.arguments.from set from block ~ ~ ~ Items[{Slot: 2b}].components."minecraft:custom_data".rotate_data.orientation
#開始深度優先搜尋
function power:netwalk_game/check_win/search/dfs with storage jk2:data root.monitor.netwalk_game.arguments
#搜尋結束 清除展示實體
kill 0-0-0-0-171e7