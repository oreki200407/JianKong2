###################################################
# 墳墓騎著的盔甲座的執行核心
# 
# Name   : stand.mcfunction
# Path   : game/death/tomb/
# As     : 被墳墓騎著的盔甲座
# At     : As
# Loop   : 是
# Author : Alex_Cai
###################################################

#如果死在空中 掉到-64以外 即刪除
kill @s[predicate=game:too_low]
#落地即刪除
kill @s[predicate=game:flag/on_ground]