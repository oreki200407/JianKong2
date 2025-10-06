###################################################
# 使用開鎖器成功
# 
# Name   : success.mcfunction
# Path   : gadget:unlock/
# As     : 使用開鎖器的玩家
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

function gadget:unlock/success
tag @s remove using_unlock
title @s actionbar {text: "開鎖中：▬▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}