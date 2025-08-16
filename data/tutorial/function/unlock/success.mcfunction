tag @s remove tutorial_unlock
tellraw @s ["◎ 鐵門已", {text: "解鎖", color: "gold"}]
title @s actionbar {text: "開鎖中：▬▬▬▬▬▬▬▬▬▬", color: "gold", bold: true}
playsound block.chest.open ambient

#消耗開鎖器
clear @s diamond[item_name="開鎖器"] 1