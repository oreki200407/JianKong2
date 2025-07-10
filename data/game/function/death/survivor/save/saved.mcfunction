###################################################
# 玩家被救起來時執行
# 
# Name   : saved.mcfunction
# Path   : game:death/survivor/save/
# As     : 被救起來的玩家
# At     : 代表倒地玩家的展示實體
# Loop   : 否
# Author : Alex_Cai
###################################################

title @s title {text: "你已被救起", color: "green", bold: true}
tellraw @a ["◎ ", {selector: "@s"}, " 已被救起"]
playsound entity.experience_orb.pickup ambient @s

function game:death/survivor/up