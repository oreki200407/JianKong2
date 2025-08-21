function box:fix/fix_mode/leave
title @s actionbar [{"text": "修理中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold": true}]
function box:use/reset
tag @e[type=armor_stand, tag=box_off] remove box_off
playsound block.conduit.activate ambient @a ~ ~ ~ 1 2
tellraw @a ["◎ 電箱已", {text: "修理完畢", color:gold}]