execute if block ~ ~-1 ~ air run return run tellraw @s ["◎ 使用", {"text": "失敗", "color":"gold"},", 請對著地板", {"text": "使用", "color":"gold"}]

item modify entity @s weapon.mainhand gadget:remove_1
function gadget:bear_trap/summon