tellraw @s ["◎ 購買", {"text": "失敗", "color":"gold"}, ", 你沒有足夠的錢"]
playsound entity.villager.no ambient @s
clear @s *[custom_data~{type:"shop"}]