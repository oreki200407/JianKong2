function tutorial:box/fix/fix_mode/leave
title @s actionbar [{"text": "修理中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold": true}]
function tutorial:box/use/reset
playsound block.conduit.activate ambient @a ~ ~ ~ 1 2
tellraw @s ["◎ 電箱已", {text: "修理完畢", color:gold}]
scoreboard players set #box fix_progress 0