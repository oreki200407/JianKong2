function box:fix/fix_mode/leave
title @s actionbar [{"text": "修理中：▬▬▬▬▬▬▬▬▬▬", "color": "gold", "bold": true}]
function box:use/reset
tag @e[tag=box_off, type=armor_stand] remove box_off
playsound block.conduit.activate master @a ~ ~ ~ 1 2
tellraw @a[team=survivor] ["◎ 電箱已", {text: "修理完畢", color:gold}]