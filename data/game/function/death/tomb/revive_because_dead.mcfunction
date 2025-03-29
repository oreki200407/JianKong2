###################################################
# 復活死透的玩家並刪除自己
# 
# Name   : revive_because_dead.mcfunction
# Path   : game/death/tomb
# As     : 代表倒地玩家的展示實體
# At     : As
# Loop   : 否
# Author : Alex_Cai
###################################################

tp @a[tag=dead] ~ ~-0.5 ~
kill