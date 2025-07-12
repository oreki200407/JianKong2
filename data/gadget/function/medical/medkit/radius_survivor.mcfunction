###################################################
# 醫療箱的治療效果
# 
# Name   : use.mcfunction
# Path   : gadget:medical/medkit/
# As     : 使用醫療箱的玩家周圍5格內的生存者們
# At     : 使用醫療箱的玩家
# Loop   : 否
# Author : oreki20
###################################################

effect give @s regeneration 8 2
tellraw @s ["◎ 你獲得了", {"text": "醫療箱", "color":"gold"},"的治療效果"]