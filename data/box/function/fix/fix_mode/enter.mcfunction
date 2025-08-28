###################################################
# 進入修理電箱狀態
# 
# Name   : enter.mcfunction
# Path   : box:fix/fix_mode/
# As     : 進入修理電箱狀態的玩家
# At     : 電箱
# Loop   : 否
# Author : Alex_Cai
###################################################

setblock ~ ~ ~ dispenser[facing=down]{CustomName: "電箱", lock: {items: "air", count: 1}} destroy
function box:use/kill_item
tag @s add fixing_box
#禁止跳躍
attribute @s jump_strength modifier add jk2:fix_box -0.95 add_multiplied_base
scoreboard players set @s jump_fix 0

tellraw @s ["◎ 反覆點擊", {keybind: "key.jump", color: "gold"}, "來進行修復, 修復過程中將觸發", {text: "快速反應事件", color: "gold"}]