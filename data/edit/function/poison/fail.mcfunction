kill
execute as @s[tag=poison_a] run return run tellraw @p ["◎ 設定", {"text": "失敗", "color":"gold"},", 目前已存在設定中的毒氣"]
execute as @s[tag=poison_b] run tellraw @p ["◎ 設定", {"text": "失敗", "color":"gold"},", 目前不存在設定中的毒氣"]