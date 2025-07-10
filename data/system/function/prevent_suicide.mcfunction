###################################################
# 防止旁觀者跳虛空自殺
# 
# Name   : prevent_spec_suicide.mcfunction
# Path   : system:
# As     : 跳虛空的旁觀者
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

advancement revoke @s only system:prevent_suicide
execute unless entity @e[type=marker, tag=lobby, limit=1] run return fail

tp @s ~ 0 ~
effect give @s instant_health 10 10 true