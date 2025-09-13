title @s actionbar {text: "你沒有子彈或彈夾", color: "red", bold: true}
scoreboard players reset @s reload_time
scoreboard players reset @s reload
execute at @s run playsound block.dispenser.dispense master @s ~ ~ ~ 1 2